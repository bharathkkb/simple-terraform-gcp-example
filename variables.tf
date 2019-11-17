variable "project_id" {
  type        = string
  description = "Name of project for example VM"
  default     = ""
}
variable "network" {
  description = "The VPC network created to host the vm"
  default     = "test-network"
}

variable "subnetwork" {
  description = "The subnetwork created to host the vm"
  default     = "test-subnet"
}
