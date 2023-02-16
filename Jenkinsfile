pipeline {
    agent any
    stages {
        stage('vcs') {
            steps {
                git url: 'https://github.com/yaswitha94/game-of-life.git', 
                    branch: 'master'
            }
        }
        stage('build'){
            steps{
                sh 'docker image build -t yaswithaa/gol:1.0 .'
                sh 'docker image push yaswithaa/gol:1.0'
            }
        }
    }
}

