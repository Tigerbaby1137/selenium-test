pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                // Replace with your Git repository URL
                git 'https://github.com/Tigerbaby1137/selenium-test.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t selenium-tests .'
                }
            }
        }
        stage('Run Tests') {
            steps {
                script {
                    sh 'docker run --rm selenium-tests'
                }
            }
        }
    }

    post {
        always {
            sh 'docker rmi selenium-tests || true'
        }
    }
}

