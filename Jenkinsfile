pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo "Building.. !!!"
                sh "pwd"
                sh "npm --version"
            }
        }
        stage('Test') {
            steps {
                echo "Testing...."
                sh "npm test"
            }
        }
        stage('Deploy') {
            steps {
                echo "Deploying...."
            }
        }
    }
}
