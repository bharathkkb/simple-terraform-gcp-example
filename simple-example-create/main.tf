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
      subnet_name   = "test-sub"
      subnet_ip     = "10.0.0.0/17"
      subnet_region = "us-central1"
    },
  ]
}
resource "google_compute_instance" "example_vm" {
  project      = var.project_id
  zone         = "us-central1-a"
  name         = "example-vm-4"
  machine_type = "f1-micro"
  network_interface {
    network    = module.gcp-network.network_name
    subnetwork = module.gcp-network.subnets_self_links[0]
  }
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
}
data "google_client_config" "default" {
}
