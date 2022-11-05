pipeline {
    agent any
   tools {
  terraform 'Terraform'
}


    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'main', credentialsId: 'Github', url: 'https://github.com/ShubbamShrmali/ELK-Stack.git'
            }
        }
        stage('Terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }
}