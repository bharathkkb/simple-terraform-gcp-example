provider "google" {
  version = "~> 2.18.0"
}
module "gcp-network" {
  source       = "terraform-google-modules/network/google"
  version      = "~> 1.4.0"
  project_id   = var.project_id
  network_name = "test-vpc"

  subnets = [
    {
      subnet_name   = "test-subnet"
      subnet_ip     = "10.0.0.0/17"
      subnet_region = "us-central1"
    },
  ]
}
resource "google_compute_instance" "example_vm" {
  project      = var.project_id
  zone         = "us-central1-a"
  name         = "example-vm"
  machine_type = "f1-micro"
  network_interface {
    network = module.gcp-network.network_name
  }
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
}
