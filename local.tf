resource "local_file" "main" {
  # use path.module to ensure the file is created in the same folder as this Terraform
  # configuration (the module directory), regardless of the runtime working dir
  filename = "${path.module}/mani.txt"
  content  = "terraform is awesome changed"
}