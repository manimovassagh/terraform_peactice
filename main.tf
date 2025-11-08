resource "local_file" "main.tf" {
  filename = "./mani.txt"
  content = "terraform is awsome"
}