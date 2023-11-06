
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
             stage("Send Email"){
                mail bcc: '', body: '''Hello Aliyan,
                The Ci/Cd pipeline has been build. Please check the progress.
                Thanks.''', cc: '', from: '', replyTo: '', subject: 'Ansible Nginx Playbook', to: 'aliyannadeem10@gmail.com'
             }
           }


// This is use to send the email notification if the build failed or succeed.
        post {
        always {
            script {
                currentBuild.result = currentBuild.resultIsBetterOrEqualTo('SUCCESS') ? 'SUCCESS' : 'FAILURE'
                emailext(
                    subject: "Pipeline ${currentBuild.result}",
                    body: "The Jenkins pipeline has completed with result: ${currentBuild.result}",
                    to: 'aliyannadeem10@gmail.com',
                    attachLog: true,
                )
            }
        }
    }
}
