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
            def scannerHome = tool 'SonarQubeScanner'
            withSonarQubeEnv('SonarQube'){
              Sh "${scannerHome}/bin/Sonar-scanner"
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
