resource "local_file" "cat" {
  filename = var.filename[count.index]
  content  = "Hello super dog"
  count    = length(var.filename)
}
output "name" {
  value = local_file.cat
  sensitive = true
}
jjose@AQZSXC meta_arguments_count % cat variables.tf
variable "filename" {
  type = list(string)
  default = [
    "./pet.txt",
    "./dog.txt",
    "./cow.txt",
    "./cat.txt"
  ]
}
