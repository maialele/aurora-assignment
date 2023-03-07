pipeline {
    agent any
    
    stages {
        stage('Build Image') {
            steps {
                script {
                    dockerComposeBuild(buildFile: 'docker-compose.yaml')
                    dockerImagePush("aurora-py:${env.BUILD_ID}")
                }
            }
        }
        stage('Run Container') {
            steps {
                script {
                    dockerComposeUp(buildFile: 'docker-compose.yaml', imageName: "aurora-py:${env.BUILD_ID}")
                }
            }
        }
    }
}
