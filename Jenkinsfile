node {
    def app
    stage('Clone') {
        checkout scm
    }
    stage('Build') {
        app = docker.build("spring/petclinic")
    }
    stage('Test') {
        app.inside {
            sh 'echo "TODO: insert tests"'
        }
    }
    stage('Push image') {
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}