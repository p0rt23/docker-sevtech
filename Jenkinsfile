pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                sh 'printenv'
                sh 'curl -L -o server.zip https://minecraft.curseforge.com/projects/sevtech-ages/files/2686922/download'
                sh 'docker build --no-cache -t p0rt23/sevtech:3.1.1-develop .'
            }
        }
    }
}
