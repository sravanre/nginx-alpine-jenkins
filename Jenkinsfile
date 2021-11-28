pipeline{
	agent any
	stages {
		stage('Verify branch'}{
			steps{
			echo "$GIT_BRANCH"
			}
	}
		stage('docker build'){
		steps{
		sh(script: 'docker build -t sravan-nginx:v1 .')
		}
		}
		stage('docker run') {
		steps{
		sh(script: 'docker run -itd --name=sravan-new -p 8082:80 sravan-nginx:v1')
		}
		}
		 
		stage('check web app'){
		steps{
		sh(script: 'curl 192.168.0.109:8082')
		}
		}
}
