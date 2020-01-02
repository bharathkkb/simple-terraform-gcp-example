terraform {
  backend "gcs" {
    bucket = "jenkins-test-pipeline-tfstate-8a0e2"
  }
}
