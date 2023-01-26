
### Kubernetes

resource "digitalocean_kubernetes_cluster" "k8s-cluster" {
  name   = "k8s-cluster"
  region = var.region
  # Grab the latest version slug from `doctl kubernetes options versions`
  version = "1.25.4-do.0"

  node_pool {
    name       = "pool-1"
    size       = "s-2vcpu-2gb"
    node_count = 2
  }
}