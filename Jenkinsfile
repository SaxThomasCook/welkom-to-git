pipeline {
    agent any

    stages {
        stage("Checkout") {
            echo "Checkout code.."
            checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'github-username-jenkins', url: 'https://github.com/SaxThomasCook/welkom-to-git.git']]])
        }
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
