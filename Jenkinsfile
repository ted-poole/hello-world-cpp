pipeline {
   agent { label 'docker' }

   environment {
       IMAGE_NAME="${JOB_NAME}:${BRANCH_NAME}"
   }

   stages {
      stage('Build') {
         steps {
            sh 'docker build -t ${IMAGE_NAME} .'
         }
      }
      stage('Push') {
         steps {
            sh 'docker push ${IMAGE_NAME}'
         }
      }
   }
}
