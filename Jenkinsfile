pipeline {
  
 agent any
stages {
  stage('CodeCheckOut') {
    steps {
      script {
       checkout scm
       }
      }
     }      
      stage('Build customer app code'){
        steps {
        script {

         sh 'sudo apt-get -y update'
         sh 'sudo apt-get -y install default-jdk'
         sh 'sudo apt-get -y install maven'
         sh 'mvn clean install '
         sh'mvn test site'
       }
      }
     }
 stage('Docker Build and push'){
  steps{
   script{
    sh 'sudo docker build -t mittalyash32/myapp .'
     sh " sudo docker login -u=$env.dockerid -p=$env.dockerpassword"
     sh " sudo docker push mittalyash32/myapp "
     //sh "sudo docker run -p 8081:9080 mittalyash32/myapp "
     //sh "kubectl create -f ApplicationDeployment.yaml -n devops3"
   
        }
   }   
   
  }

  stage('Deploy on Kubernetes')
  { 
    kubernetesDeploy (
     kubeconfigId: 'kubeconfig',
     configs: 'ApplicationDeployment.yaml',
     enableConfigSubstitution: false      
    )
    
  }
 }

}
