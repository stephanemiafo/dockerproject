pipeline {
  agent {
    my-greatest-agent
  }
  stages {
    stage('checkout') {
      steps {
        git(url: 'https://github.com/stephanemiafo/dockerproject.git', branch: 'main')
      }
    }

    stage('build') {
      steps {
        sh 'docker build -t jenkinsnginximage:v1.0 .'
      }
    }

  }
}