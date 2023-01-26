terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = var.do_token
}

resource "local_file" "kube_config" {
  content  = digitalocean_kubernetes_cluster.k8s-cluster.kube_config.0.raw_config
  filename = "kube_config.yaml"
}