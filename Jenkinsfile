#!/usr/bin/env groovy
pipeline {
    agent any
    
  stages {
        stage("Checkout") {
            steps {
                 git branch: 'main', 
                git url: 'https://github.com/Subidyazifo/Devops-training.git'
            }
        }

        stage("Build docker image") {
            steps {
               script {
                 docker.build("devopd-demo:latest","./docker")
               }
            }
        }

        stage("Run ansible-playbook") {
            steps {
               sh 'ansible-playbook -i ansible/inventory ansible/playbook.yml'
            }
        }
    }
}
