pipeline {
      agent { label 'agent1' }
    
    stages {
        stage('Build Image') {
            steps {
                script {
                    sh 'docker-compose build'
                }
            }
        }
        stage('Run Container') {
            steps {
                script {
                    sh 'docker-compose up'
                }
            }
        }
    }
}
