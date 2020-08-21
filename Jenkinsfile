pipeline {
    agent any
    stages {
          stage('DeployToProduction') {
            when {
                branch 'master'
            }
            steps {
                input 'Deploy to Production?'
                milestone(1)
                kubernetesDeploy(
                    kubeconfigId: 'kubeconfig',
                    configs: 'deplpoy-jackett.yml',
                    enableConfigSubstitution: true
                )
            }
    }
}
}