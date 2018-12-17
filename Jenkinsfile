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
       sh 'mvn clean install -Dmaven.test.skip=true'
       }
      }
     }
 stage('Docker Build and push'){
  steps{
   script{
    sh 'sudo docker build -t mittalyash32/myapp .'
     sh 'sudo docker login --u=$env.dockerid --p =$env.dockerpassword'
   
        }
   }
   
   
   
  }
 
 
 
    }
}
