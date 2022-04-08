variable "apiurl" {
  type = string
  sensitive = true
}

variable "username" {
  type = string
  sensitive = true
}

variable "rootpass" {
  type = string
  sensitive = true
}

variable "node_name" {
  type = string
  sensitive = false
}

variable "host_name" {
  type = string
  sensitive = false
}

variable "lxc_template" {
  type = string
  sensitive = false
}

variable "ssh_public_keys" {
  type = string
  sensitive = true
}

variable "cpucores" {
  type = number
  sensitive = false
}

variable "storage_location" {
  type = string
  sensitive = false
}

variable "disk_size" {
  type = string
  sensitive = false
}

variable "nic_name" {
  type = string
  sensitive = false
}

variable "virtbridge_name" {
  type = string
  sensitive = false
}

variable "ipv4address" {
  type = string
  sensitive = false
}
