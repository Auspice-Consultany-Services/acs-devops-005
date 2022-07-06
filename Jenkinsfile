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
    
        
        stage('build-sonar') {
            steps {
                 withSonarQubeEnv('sonar') { 
                 sh 'mvn clean package sonar:sonar' 
            }
            
            }    
        }
        
        stage('deploy') {
            steps {
                deploy adapters: [tomcat9(credentialsId: 'tomcat', path: '', url: 'http://3.208.10.14:8090/')], contextPath: null, war: '**/*.war'
            }
        }
    }
}

