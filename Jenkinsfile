pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Subidyazifo/Devops-training.git',
                    credentialsId: '66b6f463-b170-4941-878e-9fbf3090d841'
            }
          }
         stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }

    }
}
