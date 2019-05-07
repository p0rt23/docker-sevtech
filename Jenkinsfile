pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                sh 'curl -L -o server.zip https://minecraft.curseforge.com/projects/sevtech-ages/files/2686922/download'
                
                script {
                    if (env.BRANCH_NAME == 'develop') {
                        TAG = "-develop"
                    }
                }
                    
                sh "docker build --no-cache -t p0rt23/sevtech:3.1.1${TAG} ."
            }
        }
    }
}
