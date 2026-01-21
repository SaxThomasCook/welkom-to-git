pipeline {
	agent any
	stages {
		stage ('Checkout') {
			steps {
				echo "Checkout repository"
				checkout scm	
			}
		}
		stage ('Build') {
			steps {
				echo "Building Hugo static site"
				bat "hugo --source ${WORKSPACE}\\hugo-site --destination ${WORKSPACE}\\hugo-site\\public"
			}
		}
		stage ('Test') {
			steps {
				echo "Snyk Test"
				echo "Find your Snyk API Key in menu under your personal account settings: https://app.snyk.io/account"
				echo "Store your Snyk Installation name at Jenkins Tools page and name it snyk-teach-tbm" 
				echo "Store your API Key at the Jenkins Credentials page under Token Id SnykLearn"
				echo "Change current working folder to select folder to scan"
				dir("${env.WORKSPACE}\\frontend") { 
				echo "Security scanning with Snyk"
				println("Git URL: ${GIT_URL}")
				println("Git BRANCH: ${GIT_BRANCH}")
				dir("${env.WORKSPACE}\\hugo-site") { 
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
