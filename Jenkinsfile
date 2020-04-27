pipeline {
  agent {
    node {
      label 'nodejs'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'node --version'
        sh 'npm --version'
        sh 'npm install -g @angular/cli@latest -ddd'
        sh 'npm init -force'
      }
    }
  }
}
