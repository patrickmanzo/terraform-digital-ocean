
### Droplet

resource "digitalocean_droplet" "jenkins" {
  image    = "ubuntu-22-04-x64"
  name     = "Jenkins-VM"
  region   = var.region
  size     = "s-2vcpu-2gb"
  ssh_keys = [data.digitalocean_ssh_key.ssh-key.id]
}

data "digitalocean_ssh_key" "ssh-key" {
  name = var.ssh-key-name
}