pipeline {
    agent any 
    stages {
        stage('Code checkout and Clone') {
               steps { 
                git(url: 'https://github.com/MuhammadAliyan10/ansible_jenkins_nginx.git', credentialsId: 'Github_Access', branch: 'main')
                echo "Repository cloned successfull."
              }
            
          }

        stage('Install and deploy') {
              steps {
                sh 'ansible-playbook nginx_playbook.yml'
                echo 'Playbook run successfully.'
            }
        }
    }


}
