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
         sh 'sudo apt-get update && sudo apt-get upgrade'
         sh 'sudo apt-get -y install default-jdk'
         sh 'sudo apt-get -y install maven'
       sh 'mvn clean install -Dmaven.skip.test=true'
       }
      }
     }
    }
}
