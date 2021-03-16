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
    sh '/usr/bin/pm2 start index.js'
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
