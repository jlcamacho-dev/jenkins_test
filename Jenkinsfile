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
                echo "running test script..." >> ${WORKSPACE}/foo.txt"

                script {
                    sh "${WORKSPACE}/scripts/hello.sh"
                }
            }
        }
    }
}