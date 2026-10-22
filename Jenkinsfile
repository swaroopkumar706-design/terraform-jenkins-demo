pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Terraform Version') {
            steps {
                sh 'terraform -version'
            }
        }

        stage('Terraform Format') {
            steps {
                sh 'terraform fmt -check -recursive'
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init -backend=false -input=false'
            }
        }

        stage('Terraform Validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -input=false'
            }
        }
    }

    post {
        success {
            echo 'Terraform pipeline completed successfully!'
        }

        failure {
            echo 'Terraform pipeline failed. Check the console output.'
        }
    }
}
