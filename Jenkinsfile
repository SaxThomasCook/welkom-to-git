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
				println("Getting environment:${environment}")
			}
		}
	}
}
