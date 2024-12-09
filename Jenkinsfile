pipeline {
    agent any

    stages {
        stage("Checkout") {
            echo "Checkout code.."
            checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'github-username-jenkins', url: 'https://github.com/SaxThomasCook/welkom-to-git.git']]])
        }
        stage('Build') {
            steps {
                    echo "Building... !!!"
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
                script {
                    echo "Deploying...."
                    Boolean bool = fileExists 'git-script.sh'
                    if (bool) {
                        println "The File git-script.sh exists :)"
                    } else {
                        println "The File git-script.sh does not exist :("
                    }  
                }
            }
        }
    }
}
