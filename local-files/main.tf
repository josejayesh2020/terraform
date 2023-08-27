resource "local_file" "cat" {
  filename = var.filename[count.index]
  content  = "Hello super dog"
  count    = length(var.filename)
}
output "name" {
  value     = local_file.cat
  sensitive = true
}
terraform {
  backend "local" {
    path = "/home/cloud_user/terraform.tfstate"
  }
}
