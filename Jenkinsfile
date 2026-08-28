pipeline {
    agent any
    environment {
        DOCKER_IMAGE = "your-dockerhub-username/my-app"
        REGISTRY_CREDENTIALS = "docker-hub-credentials-id"
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/your-username/your-repo.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    appImage = docker.build("${DOCKER_IMAGE}:${BUILD_NUMBER}")
                    appImageTag = docker.build("${DOCKER_IMAGE}:latest")
                }
            }
        }
        stage('Push Image to Registry') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', "${REGISTRY_CREDENTIALS}") {
                        appImage.push("${BUILD_NUMBER}")
                        appImageTag.push('latest')
                    }
                }
            }
        }
        stage('Deploy with Ansible') {
            steps {
                sh 'ansible-playbook -i ansible/hosts ansible/deploy.yml'
            }
        }
    }
    post {
        always {
            sh 'docker system prune -f'
        }
    }
}
