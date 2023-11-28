pipeline {
    agent any
    stages {
        stage('build docker image') {
            steps {
                bat 'docker build -t hello-world-apache .'
            }
        }
        stage('run container') {
            steps {
                bat 'docker run -p 81:80 -td --name="hello-world-apache-1" hello-world-apache'
            }
        }
    }
    post {
        always {
            echo 'Process finished'
        }
    }
}