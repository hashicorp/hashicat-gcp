# Introduction to Terraform on GCP

## Getting Started
This guide will show you how to install a simple web application on a Google Compute instance using Terraform, a popular open source provisioning tool. The web app is called HashiCat, also known as the Meow World application. It's a simple web application that shows pictures of cats. 😻

**Time to complete**: About 10 minutes

Click the **Start** button to move to the next step.

## What is Terraform?
Terraform code is easy to learn and can be used to build any type of Google Compute infrastructure. Terraform is pre-installed on your Google Cloud workstation. Go ahead and try running the `terraform version` command now:

```bash
terraform version
```

**Tip**: Click the Copy to Cloud Shell button on the side of the code box and then hit Enter in your terminal. You can also click the copy button on the side of the code box and paste the command in the Cloud Shell terminal to run it.

Click **Next** to proceed to the next step.

## Create a Google Cloud Project
You can use an existing Google Cloud Project or create a new one. The project menu is right at the top of your Google Cloud Platform dashboard:

https://console.cloud.google.com/home/dashboard

Once you have created a project (or selected an existing one), you'll need to enable the Compute Engine API. Visit the APIs dashboard and click on the `+Enable APIs and Services` button. Search for 'compute' and select the **Compute Engine API**. Click on the blue **Enable** button.

https://console.cloud.google.com/apis/dashboard

Click **Next** to proceed.

## Edit Terraform Variables
In order for Terraform to work we need to provide two variables in a config file named `terraform.tfvars`. Rename the sample `terraform.tfvars.example` file with the following command:

```bash
mv terraform.tfvars.example terraform.tfvars
```

Next you can edit the file using the Cloud Shell editor:

```bash
cloudshell edit terraform.tfvars
```

Replace the **prefix** and **project** variables with your own. Prefix can be any short string of lower-case letters, and project needs to match the Project ID you created above.

Click **Next** to proceed.

## Run Terraform Init
Next you can run the `terraform init` command. When you run it Terraform will analyze your code and download any required providers that it needs to build your infrastructure. 

```bash
terraform init
```

Click **Next** to proceed.

## Run Terraform Plan
Terraform comes with the ability to do a 'dry run'. This is also known as `terraform plan`. Run it now to see what would be built if you applied the code:

```bash
terraform plan
```

Click **Next** to proceed.

## Run Terraform Apply
Here we run `terraform apply` to actually implement our changes and build real infrastructure. You'll need to respond 'yes' to confirm the run. Try it now:

```bash
terraform apply
```

Wait for a few minutes as your Terraform code builds the Meow World application. If you like you can browse through the main.tf file to see the code that is used to build our VM and install the app:

```bash
cloudshell edit main.tf
```

Click **Next** to proceed.

## Open Your App
At the end of the run you should see some outputs that look like this:

```
catapp_url = http://34.67.185.21
private_ip = 10.0.10.2
```

Open the `catapp_url` link in your web browser to see Kittens as a Service (KaaS). Congratulations, you just built your first GCP application with Terraform!

Click **Next** to proceed.

## Terraform Destroy
You can clean up everything you built with the `terraform destroy` command. Try it now:

```bash
terraform destroy
```

You'll need to confirm your intention by typing `yes` again. This is to help prevent accidental deletion of important infrastructure!

Nice work. If you'd like to learn more about Terraform on Google Cloud Platform visit the following link:

https://cloud.google.com/community/tutorials/getting-started-on-gcp-with-terraform
