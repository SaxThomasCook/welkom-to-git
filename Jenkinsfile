node {
	stage 'Checkout'
        echo "test"
		checkout scm

	stage 'Build'
		echo "Build"
		bat "cd frontend"
		bat "dotnet publish -c Release -o out"
		
	stage 'Test'
		echo "Test"
		bat "cd out"
		bat "dir"
}
