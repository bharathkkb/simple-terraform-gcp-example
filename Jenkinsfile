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
        stage('validate') {
            steps {
                sh 'terraform validate'
            }
        }
    }
}