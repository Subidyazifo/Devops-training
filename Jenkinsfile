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
            steps {
                timeout(time: 1, unit: 'HOURS') {
                    def qg = waitForQualityGate()
                    if (qg.status != 'OK') {
                    error "Pipeline aborted due to quality gate failure: ${qg.status}"
              }
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
