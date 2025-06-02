pipeline {
    agent any

    stages {
        stage('Cloner le dépôt') {
            steps {
                git branch: 'main', url: 'https://github.com/RinotAndria/movie-app.git'
            }
        }

        stage('Construire l’image Docker') {
            steps {
                script {
                    sh 'docker build -t movie-app .'
                }
            }
        }

        stage('Lancer le conteneur') {
            steps {
                script {
                    sh 'docker stop movie-app || true'
                    sh 'docker rm movie-app || true'
                    sh 'docker run -d -p 8080:80 --name movie-app movie-app'
                }
            }
        }
    }
}

