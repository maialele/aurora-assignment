pipeline {
    agent any
    
    stages {
        stage('Build Image and run container') {
            steps {
                script {
                    sh 'docker-compose up'
                }
            }
        }
    }
}
