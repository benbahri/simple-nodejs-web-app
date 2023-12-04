resource "aws_key_pair" "nodejs-web-app-key" {
  key_name   = "nodejs-web-app"
  public_key = file("./nodejs-web-app.pem")
}

resource "aws_key_pair" "jenkins-key" {
  key_name   = "jenkins"
  public_key = file("./jenkins.pem")
}