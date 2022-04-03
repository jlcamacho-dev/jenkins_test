pipeline {
    agent any 

    stages { 
        stage('list env vars') {
            steps{
                sh "printvenv | sort" 
            }
        }


    }

}