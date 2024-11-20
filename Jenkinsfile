pipeline {
    agent any
    tools {
        git 'Default Git' // Replace with the name of your Git installation in Global Tool Configuration
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Subidyazifo/Devops-training.git'
            }
        }
    }
}
