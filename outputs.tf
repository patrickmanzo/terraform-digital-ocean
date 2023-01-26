output "jenkins_public_ip" {
  value = digitalocean_droplet.jenkins.ipv4_address
}

output "jenkins_private_ip" {
  value = digitalocean_droplet.jenkins.ipv4_address_private
}