node {
	stage 'Checkout'
        echo "test"
		checkout scm

	stage 'Build'
		echo "Build"
		bat "dotnet publish ${workspace}\\frontend\\frontend.csproj -c Release -o ${workspace}\\out"
		
	stage 'Test'
		echo "Test"
		bat "dir frontend"
}
