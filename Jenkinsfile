node {
    def tag
    def port
    def name

    if (env.BRANCH_NAME == 'master') {
        tag = '3.1.1'
        port = 25565
        name = 'sevtech'
    }
    else {
        tag = '3.1.1-develop'
        port = 15565
        name = 'sevtech-develop'
    }

    stage('Build') {
        checkout scm
        sh 'curl -L -o server.zip https://minecraft.curseforge.com/projects/sevtech-ages/files/2686922/download'
        sh "docker build --no-cache -t p0rt23/sevtech:${tag} ."
    }

    stage('Deploy') {
        sh 'docker stop ${name}'
        sh "docker run -d --rm --name ${name} -v /home/docker/volumes/sevtech-world:/opt/sevtech/world -v /home/docker/volumes/sevtech-backups:/opt/sevtech/backups -p ${port}:25565 p0rt23/sevtech:${tag}"
        sh 'docker image prune -a -f'
    }
}
