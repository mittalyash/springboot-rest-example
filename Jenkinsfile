pipeline {
  
 agent any
stages {
  stage('CodeCheckOut from GITHUB') {
    steps {
      script {
       checkout scm
       }
      }
     }      
      stage('Build and test Application Code'){
        steps {
        script {

         sh ' apt-get -y update'
         sh ' apt-get -y install default-jdk'
         sh ' apt-get -y install maven'
         sh 'mvn clean install '
         sh'mvn test site'
       }
      }
     }
 stage('Build and Push Docker Image'){
  steps{
   script{
    sh ' docker build -t mittalyash32/myapp .'
     sh "  docker login -u=$env.dockerid -p=$env.dockerpassword"
     sh "  docker push mittalyash32/myapp "
     //sh "sudo docker run -p 8081:9080 mittalyash32/myapp "
     //sh "kubectl create -f ApplicationDeployment.yaml -n devops3"
   
        }
   }   
   
  }

  stage('Deploy on Kubernetes Cluster'){
    steps{
    kubernetesDeploy (
     kubeconfigId: 'kubeconfig',
     configs: 'ApplicationDeployment.yaml',
     enableConfigSubstitution: false      
    )
    }
    
  }
 }

}
