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
    
    stage("Build docker image") {
            steps {
               script {
                 docker.build("devopd-demo:latest")
               }
            }
        }
    }
}
