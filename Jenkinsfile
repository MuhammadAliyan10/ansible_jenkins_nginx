pipeline {
    agent any 
    stages {
        stage('Code checkout and Clone') {
               steps { 

                git(url: 'https://github.com/MuhammadAliyan10/ansible_jenkins_nginx.git', credentialsId: 'github_access')
              }
            
          }

        stage('Build and Deploy') {
              steps {
                 sh 'ansible-playbook nginx_playbook.yml'
            }
        }
    }


}
