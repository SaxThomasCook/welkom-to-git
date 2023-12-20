pipeline {
    agent any

    stages {
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
