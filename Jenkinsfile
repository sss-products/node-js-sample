pipeline {
    agent any
    stages {
        stage("clone code") {
            steps {
                sh "rm -r *"
                git url: 'https://github.com/Nagendra2140/node-js-sample.git'
            }
        }
        stage("deploy"){
            steps {
                sshagent(['Nodejs']) {
                    sh "scp -r -o StrictHostKeyChecking=no /var/lib/jenkins/workspace/nodejs_cicd/* ubuntu@65.1.110.216:/var/www/html/node-js-sample"
                    sh "ssh ubuntu@65.1.110.216 /var/www/html/node-js-sample/npm.sh"
                    sh "ssh ubuntu@65.1.110.216 sudo systemctl restart node.service"
                }
            }
        }  
    }
}
