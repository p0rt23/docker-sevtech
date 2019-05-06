pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t p0rt23/sevtech:3.1.1 .'
            }
        }
    }
}
