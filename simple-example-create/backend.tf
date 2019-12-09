terraform {
  backend "gcs" {
    bucket = "test-proj-tfstate"
  }
}
