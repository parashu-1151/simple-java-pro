pipeline {
    agent any 
    tools {
        maven 'maven'
    }
    stages {
        stage('checkout') {
            steps {
             checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'githubcre', url: 'https://github.com/parashu-1151/simple-java-pro']]])   
            }
        }
        stage('maven_Build') {
            steps {
                sh 'mvn clean install -f pom.xml'
            }
        }
        stage(Deploy) {
            steps {
                deploy adapters: [tomcat8(credentialsId: 'tomcat_credentials', path: '', url: 'http://13.233.152.119:8080/')], contextPath: null, war: '**/*.war'
            }
        }
        stage('slack notify') {
            steps {
              slackSend channel: '#jenkins', message: 'dev deployment successfully'
            }
        }
        stage('Dev approval') {
            steps {
                echo "Taking approval from Dev manager for QA deploy"
                timeout(time: 7, unit: 'DAYS') { 
                input message: 'do u want to deploy?', submitter: 'admin'
                }
            }
        }
        stage('Deploy to QA') {
            steps {
                deploy adapters: [tomcat8(credentialsId: 'tomcat_credentials', path: '', url: 'http://13.233.152.119:8080/')], contextPath: null, war: '**/*.war'
            }
        }
        stage('slack notify-QA') {
            steps {
              slackSend channel: '#jenkins', message: 'QA deployment successfully start testing'
            }
        }
    }
    
}
