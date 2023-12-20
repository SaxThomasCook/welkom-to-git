pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                    echo "Building.. !!!"
                    git-bash "pwd"
                    git-bash "npm --version"
            }
        }
        stage('Test') {
            steps {
                    echo "Testing...."
                    git-bash "npm test"
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
