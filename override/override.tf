resource "local_file" "web" {
  filename = "web-override.txt"
  content = "Hello Web override"
}