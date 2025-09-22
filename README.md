# Opella_Terraform_Challenge

Please follow below commands to create Azure resources in zure.

1.  Authenicate to Azure using below command
      az login

    and select required subsctiption.

2. Make sure Terraform is installed in your local machine
3. Navigate to Opella_Terraform_Challenge/dev and run below commands to create Azure resources.

   terraform init
   terraform plan -var-file="dev.tfvars" -var="admin_username=vm_username" -var="admin_password=vm_password" -var="azure_subscription_id=Azure_sub_id"
   terraform apply -var-file="dev.tfvars" -var="admin_username=vm_username" -var="admin_password=vm_password" -var="azure_subscription_id=Azure_sub_id"

4. Repeat step2-4 for each environment.

Running form github Actions:
1. Login to Azure portal and create appregistration and generate federated credentials and assign contributor role on the respective subscription to the service principle
2. Go to https://github.com/srujanpalakurthi/Opella_Terraform_Challenge
3. Update the service principle and subscription secret values.
4. navigate to Actions from menu and cick on TerraformConfigration workflow
5. Click on run workflow and give your environment name like dev/ test and click on run workflow
6. It create the Azure resources in your Azure accout
