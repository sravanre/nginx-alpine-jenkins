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

        stage('docker build'){
            steps{
                sh(script: """
                pwd
                ls -l 
                docker rm -f `docker ps -aq`
                docker rmi -f `docker images -aq`
                docker ps
                docker images
                """)
                
            }
        }
       

	stage('docker run'){
	    steps {
	        sh(script: """
             docker run -itd --name=sravan-new -p 8082:80 sravan-nginx:v1
             docker ps -a
             """)

            }
     }
     
     stage('check the web app') {
         steps{
             sleep 3
             sh(script: 'curl 192.168.0.109:8082')
         }
     }
     }
}
