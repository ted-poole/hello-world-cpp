pipeline {
   agent { label 'docker' }

   environment {
       IMAGE_NAME="adlinktech/${JOB_NAME.replace('/',':')}"
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
