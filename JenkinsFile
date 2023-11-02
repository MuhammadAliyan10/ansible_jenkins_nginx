pipeline {
    agent any

    stages {
        stage('Code checkout and Clone') {
            steps {
                script {
                    def gitBranch = 'main'
                    checkout([$class: 'GitSCM',
                        branches: [[name: gitBranch]],
                        userRemoteConfigs: [[url: 'https://github.com/MuhammadAliyan10/ansible_jenkins_nginx.git']]
                    ])
                }
            }
        }

        stage('Build and Deploy') {
            steps {
                 sh 'ansible-playbook nginx_playbook.yml'
            }
        }
    }


}
