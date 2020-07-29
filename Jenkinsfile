pipeline{
    agent none
    stages {
      stage('maven项目构建') {
        agent {
          docker {
            args '-v /root/.m2:/root/.m2'
            image 'maven:3-alpine'
          }
        }
        steps {
          sh label: '', script: 'mvn -gs settings.xml clean package -Dmaven.test.skip=true'
          sh 'pwd'
          sh 'ls'
          sh 'echo 666'
        }
      }

      stage('dockers 环境构建') {
        agent any
        steps {
            sh 'echo 111'
        }
      }

    }

}