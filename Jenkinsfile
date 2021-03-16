pipeline {
 agent any
 stages {
  stage('Build') {
   steps {
    echo 'Building12345..'
    sh '/usr/bin/npm install'
   }
  }
  stage('start') {
   steps {
    echo 'starting node js project'
    sh '/usr/bin/npm start'
   }
  }
  stage('Deploy') {
   steps {
    echo 'Deploying....'
    echo 'Deployed'
   }
  }
 }
}
