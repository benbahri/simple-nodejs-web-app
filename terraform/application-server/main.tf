resource "aws-instance" "default"{
    ami  = var.ami-id
    instance_type = var.instance-type
    key_name = var.key-pair
    iam_instance_profile = var.iam-instance-profile
    network_interface {
        device_index = var.device-index
        network_interface_id = var.network-interface-id
    }
    user_data = templatefile("${path.module}/user_data.sh", {repository_url = var.repository-url})
    tags = {
        Name = var.name
    }
}