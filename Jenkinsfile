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
					snykInstallation: 'ThomasCook',
					snykTokenId: '270ef8b4-c9a3-4e49-8946-8c45407cc8f0'
				)
			}
		}
	}
}
