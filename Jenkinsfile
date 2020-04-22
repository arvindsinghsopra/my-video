pipeline {
    agent {
         node { 
             label 'nodejs' 
         }
    } 
 
    stages {
        stage('Build') {
           
            steps {
                echo 'Building..............changed again new changes again'
                echo 'Waiting 5 minutes for deployment to complete prior starting smoke testing'
                echo 'New pull request changes'
                sh 'node --version'
                sh 'npm --version'
                echo 'ng verion'
                sh 'ng --version'
                sh 'npm install @angular/cli@7.3.9'
                echo 'Install completed'
                sh 'npm install'
                echo 'NPM Install completed'
 
                sh 'npm build'
                echo 'Build completed'
 
                sh 'npm lint'
                echo 'Lint completed'
                sh 'npm test'
                echo 'Test completed'
               
                
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
