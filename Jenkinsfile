pipeline {
    agent any
    
    tools {
    maven 'Maven3' 
    }

    stages {
        stage('source') {
            steps {
                git credentialsId: 'git', url: 'https://github.com/Auspice-Consultany-Services/acs-devops-005.git'
            }
        }
        
        stage('compile') {
            steps {
                sh 'mvn clean compile'
            }
        }
        
        stage('test') {
            steps {
                sh 'mvn clean test'
            }
        }
        
        stage('build') {
            steps {
                sh 'mvn clean package'
            }
        }
        
        stage('install') {
            steps {
                sh 'mvn clean install'
            }
        }
        
         stage('sonar') {
            steps {
                 withSonarQubeEnv('sonar') { 
                 sh 'mvn sonar:sonar' 
            }
            
            } 
            
         }
         
         stage('deploy') {
            steps {
                deploy adapters: [tomcat9(credentialsId: 'tomcat', path: '', url: 'http://3.248.213.206:8080/')], contextPath: null, war: '**/*.war'
            }
        }
        
    }
}

