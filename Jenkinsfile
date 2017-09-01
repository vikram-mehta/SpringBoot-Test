node("docker") {
    docker.withRegistry('https://hub.docker.com/r/vikramm/vrepo/', 'Docker-Hub-ID') {
    
        git url: "https://github.com/vikram-mehta/SpringBoot-Test", credentialsId: 'Git-VM'
    
        sh "git rev-parse HEAD > .git/commit-id"
        def commit_id = readFile('.git/commit-id').trim()
        println commit_id
    
        stage "build"
        def app = docker.build "LocationAPI"
    
        stage "publish"
        app.push 'master'
        app.push "${commit_id}"
    }
}
