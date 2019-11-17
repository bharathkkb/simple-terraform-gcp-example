pipeline {
    agent {
        docker {
            image 'hashicorp/terraform:light'
            args '--entrypoint='

        }
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/bharathkkb/simple-terraform-gcp-example.git'
            }
        }
        stage('init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('validate') {
            steps {
                sh 'terraform validate'
            }
        }
        stage('plan') {
            steps {
                sh 'terraform plan -var project_id=${example_project_id} --out=test.out'
            }
        }
    }
}