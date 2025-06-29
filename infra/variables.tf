# ===============
# Variables
# ===============

# ===============
#      VPC
# ===============

variable "vpc_name" {
  description = "VPC Name"
  type = string
  default = "kittygram-network"
}

variable "net_cidr" {
  description = "Subnet structure"
  type = list(object({
    name = string,
    zone = string,
    prefix = string
  }))

  default = [
    { name = "infra-subnet-a", zone = "ru-central1-a", prefix = "10.129.1.0/24" },
    { name = "infra-subnet-b", zone = "ru-central1-b", prefix = "10.130.1.0/24" },
    { name = "infra-subnet-d", zone = "ru-central1-d", prefix = "10.131.1.0/24" },
  ]
}

# ===============
#   Compute VM
# ===============

variable "vm_1_name" {
  description = "Name for the Virtual Machine"
  type = string
  default = "vm-kittygram"
}

variable "image_family" {
  description = "OS Image for the VM"
  type        = string
  default     = "ubuntu-2204-lts"
}

variable "zone" {
  description = "Default availability zone"
  type        = string
  default     = "ru-central1-a"
}

variable "platform_id" {
  default = "standard-v2"
}

variable "cores" {
  default = 2
}

variable "memory" {
  default = 2
}

variable "disk_type" {
  default = "network-ssd"
}

variable "disk_size" {
  default = 15
}

variable "nat" {
  description = "Enable NAT for the VM to have public IP"
  type        = bool
  default     = true
}

# ===============
#   Credentials
# ===============

variable "ssh_key" {
  description = "SSH Public Key"
  type = string
  sensitive = true
}

variable "cloud_id" {
  description = "Cloud ID"
  type = string
}

variable "folder_id" {
  description = "Folder ID"
  type = string
}