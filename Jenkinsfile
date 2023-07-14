pipeline {
  agent any
  stages {
    stage('checkout') {
      steps {
        git(url: 'https://github.com/stephanemiafo/dockerproject.git', branch: 'main')
      }
    }

    stage('') {
      steps {
        sh 'docker build -t jenkinsboimage:v1.0 .'
      }
    }

  }
}