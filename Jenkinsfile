pipeline {
    agent {jenkins-slave}
    tools {
    maven 'Maven3' 
    }

    stages {
        stage('source_stage') {
            steps {
                git credentialsId: 'git', url: 'https://github.com/Auspice-Consultany-Services/acs-devops-005.git'
            }
        }
        
        stage('compile_stage') {
            steps {
                sh 'mvn clean compile'           
            }
        }
        
        stage('test_stage') {
            steps {
                sh 'mvn clean test'           
            }
        }
        
        
//         stage('sonar_analysis') {
//             steps {
//                 withSonarQubeEnv('sonar') { 
//                 sh 'mvn clean package sonar:sonar'           
//             }
//             }
//         }
        
//         stage('deploy_stage') {
//             steps {
//                 deploy adapters: [tomcat9(credentialsId: 'tomcat', path: '', url: 'http://3.210.185.133:8090/')], contextPath: null, war: '**/*.war'
//             }
//         }
    }
}

