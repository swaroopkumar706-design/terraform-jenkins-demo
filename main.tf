terraform {
  required_version = ">= 1.4.0"
}

resource "terraform_data" "jenkins_demo" {
  input = "Terraform executed successfully from Jenkins"
}
