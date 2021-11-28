pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
         stage('goodbye') {
            steps {
                echo 'goodbye'
            }
        }
	stage('docker run'){
	steps {
	sh(script: 'docker run -itd --name=sravan-new -p 8082:80 sravan-nginx:v1')

            }
     }
     }
}
