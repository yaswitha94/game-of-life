pipeline {
    agent any
    stages {
        stage('vcs') {
            steps {
                git url: 'https://github.com/yaswitha94/game-of-life.git', 
                    branch: 'master'
            }
        }
        stage('build') {
            steps{
                sh 'docker image build -t yaswithaa/gol:1.0 .'
                sh 'docker image push yaswithaa/gol:1.0'
            }
        }
        stage('cluster') {
            steps{
                sh 'az group create --name myResourceGroup --location eastus'
                sh 'az aks create -g myResourceGroup -n myAKSCluster --enable-managed-identity --node-count 1 --enable-addons monitoring --enable-msi-auth-for-monitoring  --generate-ssh-keys'
                sh 'sudo az aks install-cli'
                sh 'az aks get-credentials --resource-group myResourceGroup --name myAKSCluster'
            }
        }
        stage('deploy') {
            steps{
                sh 'kubectl create secret docker-registry mycred --docker-server=https://index.docker.io/v1/ --docker-username=yaswithaa --docker-password=Aadya@1104 --docker-email=yaswitha.t@gmail.com'
                sh'kubectl apply -f deploy.yaml'
            }

        }
    }
}

