pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    echo "Building.. !!!"
                    sh "pwd"
                    sh "npm --version"
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    echo "Testing...."
                    sh "npm test"
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    echo "Deploying...."
            
                }
            }
        }
    }
}
