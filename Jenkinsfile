pipeline {
    agent any
    stages {
          stage('DeployToProduction') {
            steps {
                input 'Deploy to Production?'
                kubernetesDeploy(
                    kubeconfigId: 'kubeconfig',
                    configs: 'deploy-jackett.yml',
                    enableConfigSubstitution: true
                )
            }
    }
}
}