pipeline {
  agent {
    node {
      label 'any'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'npm install'
      }
    }
  }
}