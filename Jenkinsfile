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
                    env.USERNAME = input message: 'Please enter the username',
                                    parameters: [string(defaultValue: '',
                                                    description: '',
                                                    name: 'Username')]
                    env.PASSWORD = input message: 'Please enter the password',
                                    parameters: [password(defaultValue: '',
                                                    description: '',
                                                    name: 'Password')]
                }
                echo "Username: ${env.USERNAME}"
                echo "Password: ${env.PASSWORD}"
            }
        }

        stage('Remote SSH') {
            steps {
                script {
                    def remote = [:]
                    remote.name = 'test'
                    remote.host = 'raspberrypi.local'
                    remote.user = env.USERNAME
                    remote.password = env.PASSWORD
                    remote.allowAnyHosts = true
                    stage('Remote SSH') {
                        sshCommand remote: remote, command: "touch jlcamacho_was_here.txt"
                        sshCommand remote: remote, command: "ls -lrt"
                        sshCommand remote: remote, command: "for i in {1..5}; do echo -n \"Loop \$i \"; date ; sleep 1; done"
                    }
                }
            }
        }
    }
}


                // script {
                //     def remote = [:]
                //     remote.name = 'test'
                //     remote.host = 'raspberrypi.local'
                //     remote.user = 'pi'
                //     remote.password = 'WaterDance15!'
                //     remote.allowAnyHosts = true
                //     stage('Remote SSH') {
                //         sshCommand remote: remote, command: "touch jenkins_was_here.txt"
                //         sshCommand remote: remote, command: "ls -lrt"
                //         sshCommand remote: remote, command: "for i in {1..5}; do echo -n \"Loop \$i \"; date ; sleep 1; done"
                //     }
                // }
