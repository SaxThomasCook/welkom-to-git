node {
	stage 'Checkout'
        echo "test"
		checkout scm

	stage 'Build'
		echo "Build"
		bat "dotnet publish %WORKSPACE%/frontend/frontend.csproj" -c Release -o %WORKSPACE%/out"
		
	stage 'Test'
		echo "Test"
		bat "dir frontend"
}
