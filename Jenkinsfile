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
    sh 'sudo docker build -t deeptish29/myapp .'
     sh " sudo docker login -u=$env.dockername -p=$env.dockerpass"
     sh " sudo docker push deeptish29/myapp "
     sh "sudo docker run -p 8081:9080 deeptish29/myapp "
   
        }
   }   
   
  }

 }

}
