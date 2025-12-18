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
				bat "dotnet publish \"${workspace}\\frontend\\frontend.csproj\" -c Release -o out"
			}
		}	
		stage ('Test') {
			steps {
				echo "Test"
				bat "dir out"
				println("Git URL:${GIT_URL}")
				println("Git BRANCH:${GIT_BRANCH}")
				echo "Snyk Test"
				echo "Find your Snyk API Key in menu under your personal account settings: https://app.snyk.io/account"
				echo "Store your Snyk Installation name at Jenkins Tools page and name it snyk-teach-tbm" 
				echo "Store your API Key at the Jenkins Credentials page under Token Id SnykLearn"

				snykSecurity(
          			snykInstallation: 'snyk-teach-tbm',
          			snykTokenId: 'SnykLearn',
        		)

			}
		}
	}
}
