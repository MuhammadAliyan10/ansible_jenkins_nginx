pipeline {
    agent any 
    stages {
        stage('Code checkout and Clone') {
               steps { 

                git(url: 'https://github.com/MuhammadAliyan10/ansible_jenkins_nginx.git', credentialsId: 'ce9ec1e3-ffd0-40bc-b12d-0be2dfae774e')
              }
            
          }

        stage('Build and Deploy') {
              steps {
                 sh 'ansible-playbook nginx_playbook.yml'
            }
        }
    }


}
