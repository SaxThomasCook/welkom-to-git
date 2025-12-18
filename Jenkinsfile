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
				echo "77aeaf09-4394-4e36-b926-2bd802ccd1e0"
				echo "Choose your Snyk Installation during the configuration of your API Key at the Jenkins Credentials page."
				echo "SnykLearn"

				snykSecurity(
          			snykInstallation: 'SnykLearn',
          			snykTokenId: '77aeaf09-4394-4e36-b926-2bd802ccd1e0',
        		)

			}
		}
	}
}
