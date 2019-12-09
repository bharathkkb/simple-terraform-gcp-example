provider "google" {
  version = "~> 2.18.0"
}

resource "google_compute_instance" "example_vm" {
  project      = var.project_id
  zone         = "us-central1-a"
  name         = "example-vm"
  machine_type = "f1-micro"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
}
