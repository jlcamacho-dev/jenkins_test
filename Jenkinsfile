pipeline {
    agent any

    options {
        // This is required if you want to clean before build 
        skipDefaultCheckout(true) 
    }

    stages {
        stage('Stage 1') {
            steps {
                cleanWs()
                checkout scm 
                echo "step 1"
            }
        }

        stage('Stage 2') {
            steps {
                echo "step 2"
            }
        }
        stage('Stage 3') {
            steps {
                echo "step 3"
            }
        }
    }
}