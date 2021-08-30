pipeline {
  agent none
  stages {
    stage('Docker Build') {
      agent any
      steps {
        dir('app_python'){
          sh 'sudo docker build -t moiwa/jenkins_tag .'
        }
      }
    }
    stage("Tests") {
      agent any
      steps {
        echo "Tests are not configured";
      }
    }
    stage('Docker Push') {
      agent any
      steps {
        withCredentials([usernamePassword(credentialsId: 'dockerHub', usernameVariable: 'dockerHubUser', passwordVariable: 'dockerHubPassword')]) {
          sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
          sh 'sudo docker push moiwa/jenkins_tag'
        }
      }
    }
  }
}