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
                deploy adapters: [tomcat8(credentialsId: 'tomcat_credentials', path: '', url: 'http://65.2.63.250:8080/')], contextPath: null, war: '**/*.war'
            }
        }
    }
    
}
