pipeline {
  agent {
    label 'my-greatest-agent'
  }
  stages {
    stage('checkout') {
      steps {
        git(url: 'https://github.com/stephanemiafo/dockerproject.git', branch: 'main')
      }
    }

    stage('build') {
      steps {
        sh 'docker build -t gitnginx:v1.0.1 .'
      }
    }
    stage('test') {
      steps {
        sh 'docker run --rm --name ngigit -itd -p 9000:80 gitnginx:v1.0.0'
      }
    }
    stage('tagging the immage') {
      steps {
        sh 'docker tag gitnginx:v1.0.1 mps5105751778/jenkins_test:v3.0.4'
      }
    }
    stage('push') {
      steps {
        sh 'docker push mps5105751778/jenkins_test:v3.0.4'
      }
    }
  }
}

