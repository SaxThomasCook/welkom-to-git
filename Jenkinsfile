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
				        snykSecurity(
							snykInstallation: 'SaxThomasCook',
							snykTokenId: 'eb6592c2-cede-4f02-886f-8c8690d23a86'
        				)
			}
		}
	}
}
