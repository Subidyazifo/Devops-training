#!/usr/bin/env groovy
pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', 
                    url: 'https://github.com/Subidyazifo/Devops-training.git'
            }
        }
     stage('Install Dependencies'){
        steps{
           script{
              sh 'npm install'
                 }
            }
    }   
     stage('Sonarqube Analysis'){
         steps {
          script {
            withSonarQubeEnv('SonarQube'){
            }    
         }
      }
     }
    stage("Quality Gate"){
    timeout(time: 1, unit: 'HOURS') { // Just in case something goes wrong, pipeline will be killed after a timeout
    def qg = waitForQualityGate() // Reuse taskId previously collected by withSonarQubeEnv
    if (qg.status != 'OK') {
        error "Pipeline aborted due to quality gate failure: ${qg.status}"
    }
  }
}
    stage("Build docker image") {
            steps {
               script {
                 docker.build("devopd-demo:latest")
               }
            }
        }
    }
}
