pipeline{
    agent none
    stages{
        stage('项目构建'){
            agent {
                docker{
                    image 'maven:3-alpine'
                    args '-v /root/.m2:/root/.m2'
                }
            }
            stages {
                sh 'echo 123'
            }
        }
        stage('项目测试'){
            agent any
        }
    }
}