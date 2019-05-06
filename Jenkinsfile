pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                sh 'wget -O server.zip https://minecraft.curseforge.com/projects/sevtech-ages/files/2686922/download'
                sh 'docker build -t p0rt23/sevtech:3.1.1-develop .'
                sh 'printenv'
            }
        }
    }
}
