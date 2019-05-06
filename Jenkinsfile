pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                fileOperations([
                    fileCopyOperation(
                        includes: "${WORKSPACE}/server.zip",
                        targetLocation: "."
                    )
                ]),
                sh 'docker build -t p0rt23/sevtech:3.1.1 .'
            }
        }
    }
}
