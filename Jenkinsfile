pipeline {
    agent any

    environment {
        script {
            VERSION = '3.1.1'
            if (env.BRANCH_NAME == 'master') {
                TAG = "${VERSION}"
                PORT = 25565
                NAME = 'sevtech'
            }
            else {
                TAG = "${VERSION}-develop"
                PORT = 15565
                NAME = 'sevtech-develop'
            }
        }
    }

    stages {
        stage('Build') {
            steps {
                sh 'docker image rm 
                sh 'curl -L -o server.zip https://minecraft.curseforge.com/projects/sevtech-ages/files/2686922/download'
                sh "docker build --no-cache -t p0rt23/sevtech:${TAG} ."
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker stop sevtech'
                sh "docker run -d --rm --name ${NAME} -v /home/docker/volumes/sevtech-world:/opt/sevtech/world -v /home/docker/volumes/sevtech-backups:/opt/sevtech/backups -p ${PORT}:25565 p0rt23/sevtech:${TAG}"
                sh 'docker image prune'
            }
        }
    }
}
