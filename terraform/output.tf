output "jenkins-public-ip" {
  value = module.jenkins.public-ip
}

output "web-app-public-ip" {
  value = module.application-server.public-ip
}