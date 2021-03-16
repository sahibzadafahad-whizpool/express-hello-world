pipeline {
 agent any
 stages {
  stage('Build') {
   steps {
    echo 'Building12345..'
    sh '/usr/bin/npm install'
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
