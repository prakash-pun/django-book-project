pipeline {
    agent any
    stages {
        stage('Test'){
            steps{
                echo "Test skipped"
            }
        }

        stage('Deploy'){
            steps{
                echo "Test run"
                sh "chmod 755 run.sh"
                sh '"bash -s" < run.sh'
            }
        }
    }
    
    post{
        success{
            echo 'Success'
            slackSend (color: '#00FF00', message: "SUCCESS: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})", teamDomain: 'team', channel:'#random', tokenCredentialId:'jenkins-notify')
        }
        failure {
            echo 'Failed'
            slackSend (color: '#FF0000', message: "FAILED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})", teamDomain: 'team', channel:'#random', tokenCredentialId:'jenkins-notify')
        }
        unstable {  
            echo 'Unstable'  
        }  
        changed {  
            echo 'State changed'  
        }
    }
}
