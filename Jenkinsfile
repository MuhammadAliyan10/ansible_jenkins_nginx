
// Start of the pipeline.
pipeline {
//Agent any means that this task will run on any agent or node.
    agent any 
         stages {
// In this stage the checkout will check the repo, plugins and after that it will clone the repository.
            stage('Code checkout and Clone') {
               steps {
                 script {
                    checkout([$class: 'GitSCM',
                        branches: [[name: 'main']],
                        userRemoteConfigs: [[url: 'https://github.com/MuhammadAliyan10/ansible_jenkins_nginx.git']]
                     ])
                echo 'Code checkout completed, install and deployment started.'
                  }
                }
             }
//In this stage the shell script command runs ansible playbook.
            stage('Install and deploy') {
                steps {
                  sh 'ansible-playbook nginx_playbook.yml'
                  echo 'Playbook run successfully.'
                }
           }
           

           post {
            always {
               script {
            // Check the result of the current build
            currentBuild.result = currentBuild.resultIsBetterOrEqualTo('SUCCESS') ? 'Succeed' : 'Failed'
            // Send an email notification
             mail bcc: '', body: '''Hello Mr.Aliyan,
            Your Ci/Cd pipline of ansible jenkins nginx has been ${currentBuild.result}.Please review your code and pipeline for changes.
            ''', cc: '', from: '', replyTo: '', subject: 'Ansible Playbook', to: 'aliyannadeem10@gmail.com'
         
        }
    }
}


}
