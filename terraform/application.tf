module "application-server" {
  source = "./application-server"

  ami-id               = var.ami-id
  iam-instance-profile = iam_instance_profile.nodejs-web-app.id
  name                 = "nodejs Web App"
  key-pair             = aws_key_pair.nodejs-web-app-key.key_name
  network-interface-id = aws_network_interface.nodejs-web-app.id
  device-index         = 0
  repository-url       = "repo URL"
}