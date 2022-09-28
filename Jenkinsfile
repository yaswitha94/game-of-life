pipeline {
    agent any
    parameters {
        choice(name: 'BRANCH_TO_BUILD', choices: ['master', 'parameter_1'], description: 'Pick something')
        string(name: 'MAVEN_GOAL', defaultValue: 'package', description: 'Select maven goal')
    }
    stages {
        stage('vcs') {
            steps {
               git url: 'https://github.com/GitPracticeRepo/game-of-life.git', 
               branch: "${params.BRANCH_TO_BUILD}"
            }
        }
        stage('GOAL') {
            steps {
                sh "${params.MAVEN_GOAL}"
            }
        }
    }
}

