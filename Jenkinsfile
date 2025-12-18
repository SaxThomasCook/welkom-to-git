pipeline {
	agent any
	stages {
		stage ('Checkout') {
			steps {
				echo "test"
				checkout scm	
			}
		}
		stage ('Build') {
			steps {
				echo "Build"
				bat "dotnet publish \"${WORKSPACE}\\frontend\\frontend.csproj\" -c Release -o out"
			}
		}	
		stage ('Test') {
			steps {
				echo "Test"
				bat "dir"
				println("Git URL:${GIT_URL}")
				println("Git BRANCH:${GIT_BRANCH}")
				echo "Snyk Test"
				echo "Find your Snyk API Key in menu under your personal account settings: https://app.snyk.io/account"
				echo "Store your Snyk Installation name at Jenkins Tools page and name it snyk-teach-tbm" 
				echo "Store your API Key at the Jenkins Credentials page under Token Id SnykLearn"
				echo "Change current working folder to select folder to scan"
				dir("${env.WORKSPACE}/out") { 
					bat "dir"
					snykSecurity(
						snykInstallation: 'snyk-teach-tbm',
						snykTokenId: 'SnykLearn',
					)
				}
			}
		}
	}
}
