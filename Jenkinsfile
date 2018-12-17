pipeline {
  environment {
    registry = "mittalyash32/myapp"
    registryCredential = 'MYDOCKER'
  }
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
    withDockerRegistry([ credentialsId: "MYDOCKER", url: "" ]) {
          sh 'docker push mittalyash32/myapp'
        }
   }
   
   
   
  }
 
 
 }
    }
}
