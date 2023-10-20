pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building.. !!!'
                pwd
                npm install
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
