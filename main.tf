terraform {
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "2.9.6"
    }
  }
}

provider "proxmox" {
  pm_api_url = var.apiurl
  pm_user = var.username
  pm_password = var.rootpass
  pm_tls_insecure = true
}

resource "proxmox_lxc" "DHCPtest" {
  target_node = var.node_name
  hostname = var.host_name
  ostemplate = var.lxc_template
  password = var.rootpass
  cores = var.cpucores
  unprivileged = true
  ssh_public_keys = var.ssh_public_keys
  start = true
  network{
    name = var.nic_name
    bridge = var.virtbridge_name
    ip     = var.ipv4address
  }
  rootfs {
    storage = var.storage_location
    size    = var.disk_size
  }
}