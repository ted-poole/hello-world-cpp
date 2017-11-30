pipeline {
   agent { label 'docker' }

   // Trigger this build if any of our base images get rebuilt (assuming latest tag)
   triggers {
       upstream(upstreamProjects: 'services-base/latest', threshold: hudson.model.Result.SUCCESS)
   }

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
