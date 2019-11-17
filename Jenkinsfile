pipeline {
    agent {
        docker { 
            image 'hashicorp/terraform:light' 
            args '--entrypoint='
            
        }
    }
    stages {
        stage('Test') {
            steps {
                sh 'terraform -v'
            }
        }
    }
}