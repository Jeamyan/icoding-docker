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
          mail to: '896077954@qq.com',
            subject: "${env.JOB_NAME}-${env.BUILD_NUMBER} 构建成功",
            body: "${env.BRANCH_NAME}分支构建成功 ${env.BUILD_URL}"
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