pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building.. !!!'
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
                ssh 54.208.31.255
            }
        }
    }
}
