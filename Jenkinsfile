pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/username/private-repo.git',
                    credentialsId: 'git-credintial'
            }
        }
    }
}
