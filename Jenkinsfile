pipeline {
    agent any

    options {
        // This is required if you want to clean before build 
        skipDefaultCheckout(true) 
    }

    stages {
        stage('setup') {
            steps {
                cleanWs()
                checkout scm 
            }
        }

        stage('Stage 2') {
            steps {
                script {
                    sh "chmod +x ${WORKSPACE}/script/hello.sh"
                    sh "./${WORKSPACE}/scripts/hello.sh"
                }
            }
        }
    }
}