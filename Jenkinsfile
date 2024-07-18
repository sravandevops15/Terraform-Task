pipeline {
    agent {
        docker {
            image 'node:16-alpine'
        }
    }

    stages {
        stage('git') {
            steps {
                git 'https://github.com/sravandevops15/react-js.git'
            }
        }
        stage('build') {
            steps{
                sh 'npm run build'
            }
        }
        
        stage('test') {
            steps{
                sh 'npm test'
            }
        }
        
        stage('deploy-compute-instance') {
            steps{
                sh '''cd /var/lib/jenkins/workspace/sample-web-application
                       npm run test
                   '''
            }
        }
    }
}
    
    

