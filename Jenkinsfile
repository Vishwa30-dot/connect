pipeline {
    agent any
    environment {
        DOCKER_IMAGE = "vishwap3110/my-app"
        REGISTRY_CREDENTIALS = "4532b6ec-590a-4026-9127-dd223c338b06"
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/Vishwa30-dot/connect.git'
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
