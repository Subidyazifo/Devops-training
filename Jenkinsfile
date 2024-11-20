pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Subidyazifo/Devops-training.git',
            }
          }
         stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }

    }
}
