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
                docker build -t sravan-nginx:v1 .
                """)
                
            }
        }
       

	stage('docker run'){
	    steps {
	        // sh(script: """
             // docker run -itd --name=sravan-new -p 8082:80 sravan-nginx:v1
             script {
             docker.image('sravan-nginx:v1').withRun('-p 8083:80')
             docker ps -a
             //""")
             }
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
