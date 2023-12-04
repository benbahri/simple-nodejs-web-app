module "jenkins" {
  source = "./jenkins-server"

  ami-id               = var.ami-id
  iam-instance-profile = iam_instance_profile.jenkins.id
  name                 = "jenkins"
  key-pair             = aws_key_pair.jenkins-key.key_name
  network-interface-id = aws_network_interface.jenkins.id
  device-index         = 0
  repository-url       = "repo URL"
}