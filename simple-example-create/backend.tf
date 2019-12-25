terraform {
  backend "gcs" {
    bucket = "jenkins-test-pipeline-tfstate"
  }
}
