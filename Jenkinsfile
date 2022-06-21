pipeline {
    agent any
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
        
	    stage('package_stage') {
            steps {
                sh 'mvn clean package'           
            }
        }
  
        
    	stage('SonarQube_Analysis') {
            steps {
                withSonarQubeEnv('sonar') { 
                sh "mvn clean package sonar:sonar"
            }
            }
        }
      
        
        stage('deploy_stage') {
            steps {
                deploy adapters: [tomcat9(credentialsId: 'tomcat', path: '', url: 'http://54.226.230.180:8090/')], contextPath: null, war: '**/*.war'
        }
        }
    }
}


