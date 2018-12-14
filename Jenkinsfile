node {
    stage('git') {
       // some block
       git 'https://github.com/GitPracticeRepo/game-of-life.git'
    }
    stage('compile') {
        sh 'mvn package'
    }
    stage('archive') {
        archiveArtifacts 'gameoflife-web/target/*.war'
    }
}