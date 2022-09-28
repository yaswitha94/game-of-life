pipeline {
    agent any
    parameters {
        choice(name: 'BRANCH_TO_BUILD', choices: ['master', 'parameter_1'], description: 'Pick something')
        string(name: 'MAVEN_GOAL', defaultValue: 'package', description: 'Select maven goal')
    }
   tools {
        java '/usr/lib/jvm/java-8-openjdk-amd64' 
    }
    stages {
        stage('vcs') {
            steps {
               git url: 'https://github.com/yaswitha94/game-of-life.git', 
               branch: "${params.BRANCH_TO_BUILD}"
            }
        }
        stage('GOAL') {
            steps {
                sh "/usr/share/maven/bin/mvn ${params.MAVEN_GOAL}"
            }
        }
    }
}

