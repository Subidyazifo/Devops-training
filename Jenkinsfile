pipeline {
    agent any
    tools {
        git 'Default Git'
    }
    stages {
        stage('Check PATH') {
            steps {
                sh 'echo $PATH'
            }
        }
        stage('Checkout') {
            steps {
                git branch: 'main', 
                    url: 'https://github.com/Subidyazifo/Devops-training.git'
            }
        }
        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t devopd-demo:latest .'
            }
        }
    }
}
