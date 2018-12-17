pipeline {
 agent any
stages {
  stage('CodeCheckOut') {
    steps {
      script {
       checkout scm
       def mvnHome = tool 'maven-3'
       def javaHome = tool 'JAVA_1.8' 
       }
      }
     }      
      stage('Build customer app code'){
        steps {
        script {
         def mvnHome = tool 'maven-3'
       def javaHome = tool 'JAVA_1.8'
       sh 'mvn clean install'
       }
      }
     }
    }
}
