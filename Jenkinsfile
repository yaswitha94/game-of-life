pipeline {
    agent any
    stages {
        stage('test') {
            steps {
                sh 'echo hello'
            }
        }
        stage('learning') {
            agent { label 'OPENJDK-11-MAVEN' }
            steps {
                git url: 'https://github.com/GitPracticeRepo/game-of-life.git', 
                    branch: 'master'
            }
        }
    }
}

