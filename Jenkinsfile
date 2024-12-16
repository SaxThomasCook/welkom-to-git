node {
	stage 'Checkout'
        echo "test"
		checkout scm

	stage 'Build'
		echo "Build"
		bat ".\frontend\dotnet publish -c Release -o out"
		
	stage 'Test'
		echo "Test"
		bat ".\frontend\dir"
}
