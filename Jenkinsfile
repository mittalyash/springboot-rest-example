pipeline {
 agent any
stages {
  stage('CodeCheckOut') {
    steps {
      script {
       checkout scm
       /*def mvnHome = tool 'maven-3'
       def javaHome = tool 'JAVA_1.8'*/
       }
      }
     }      
      stage('Build customer app code'){
        steps {
        script {
         sh 'sudo apt-get update'
         sh 'sudo apt-get -y install default-jdk'
         sh 'sudo apt-get -y install maven'
         sh 'mvn clean install'
         
       /*sh 'sudo yum -y install unzip java-1.8.0-openjdk'
       sh 'sudo yum -y install maven'
       sh 'mvn clean install'*/
       }
      }
     }
    }
}
