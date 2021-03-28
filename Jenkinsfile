pipeline {

  environment {

    registry = "sahibzadafahad/express-hello"

    registryCredential = 'docker-creds'

    dockerImage = ''

  }

  agent any

  stages {

    stage('Cloning Git') {

      steps {

        git 'https://github.com/sahibzadafahad-whizpool/express-hello-world'

      }

    }

    stage('Building image') {

      steps{

        script {

          dockerImage = docker.build registry + ":$BUILD_NUMBER"

        }

      }

    }

    stage('Deploy Image') {

      steps{

        script {

          docker.withRegistry( '', registryCredential ) {

            dockerImage.push()

          }

        }

      }

    }
	stage('Remove Existing Container') {

      steps{
	  script {
			sh '''
			a="$(docker container ls --format="{{.ID}}\t{{.Ports}}" | grep "3000" | awk '{print $1}')"
			echo $a
			if [ -z "$a" ]
			then
			echo "do not delete"
			else
			docker rm -f $a
			fi
			'''
		}
      }

    }
    
    	stage('Run Docker Image in Lab') {

      steps{

        script {

		        sh "docker run -d -p 3000:3000 ${dockerImage.imageName()}"
        }

      }

	}

  }

}