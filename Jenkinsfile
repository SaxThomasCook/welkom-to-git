pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building.. !!!'
                bash pwd
                bash npm --version
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
