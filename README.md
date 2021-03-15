# hashicat-gcp
HashiCat: A Terraform built application for use in HashiCorp workshops

Includes "Meow World" website.

[![CircleCI](https://circleci.com/gh/hashicorp/hashicat-gcp.svg?style=svg)](https://circleci.com/gh/hashicorp/hashicat-gcp)

You can try this code out in Google Cloud Shell! Click below to clone the repo into your Cloud Shell environment. You will also need a project with the Compute Engine APIs enabled in order to execute the terraform code.

[![Open in Cloud Shell](https://gstatic.com/cloudssh/images/open-btn.svg)](https://ssh.cloud.google.com/cloudshell/editor?cloudshell_git_repo=https://github.com/hashicorp/hashicat-gcp.git&cloudshell_tutorial=walkthrough.md)

Once you have the code opened, rename your `terraform.tfvars.example` file to `terraform.tfvars`. Change the **prefix** and **project** variables in the file. You will need a project with the Compute Engine APIs enabled in order to execute the terraform code. For example, your terraform.tfvars file might look like this:

```
prefix = "yourname"
project = "google-project-id"
```

Once you have saved your `terraform.tfvars` file run the following commands in your Cloud Shell:

```
terraform init
terraform plan
terraform apply
```

Wait a few minutes and watch your Meow World application deploy! 😻
