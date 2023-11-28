pipeline {
    agent any
    stages {
        stage('build docker image') {
            steps {
                bat 'docker build -t hello_world .'
            }
        }
        stage('run container') {
            steps {
                bat 'docker run -p 81:80 -td --name="hello_world1" hello_world'
            }
        }
    }
    post {
        always {
            echo 'Process finished'
        }
    }
}