pipeline {
   agent { label 'docker' }

   environment {
       IMAGE_NAME="${JOB_NAME}:${BRANCH_NAME}"
   }

   stages {
      stage('Build ' + ${IMAGE_NAME}) {
         steps {
            sh 'docker build -t ${IMAGE_NAME} .'
         }
      }
      stage('Push ' + ${IMAGE_NAME}) {
         steps {
            sh 'docker push ${IMAGE_NAME}'
         }
      }
   }
}
