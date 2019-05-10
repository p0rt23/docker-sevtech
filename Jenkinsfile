node {
    def tag
    def port
    def name

    if (env.BRANCH_NAME == 'master') {
        tag = '3.1.1'
        port = 25565
        name = 'sevtech'
        world_volume = 'sevtech-world'
        backups_volume = 'sevtech-backups'
    }
    else {
        tag = '3.1.1-develop'
        port = 15565
        name = 'sevtech-develop'
        world_volume = 'sevtech-develop-world'
        backups_volume = 'sevtech-develop-backups'
    }

    stage('Build') {
        checkout scm
        sh "curl -L -o server.zip https://minecraft.curseforge.com/projects/sevtech-ages/files/2686922/download"
        sh "docker build --no-cache -t p0rt23/sevtech:${tag} ."
    }

    stage('Deploy') {
        try {
            sh "docker stop ${name}"
            sh "docker rm ${name}"
        }
        catch (Exception e) { 
            
        }
        sh "docker run -d --restart always --name ${name} -v /home/docker/volumes/${world_volume}:/opt/sevtech/world -v /home/docker/volumes/${backups_volume}:/opt/sevtech/backups -p ${port}:25565 p0rt23/sevtech:${tag}"
    }
}
