# Dev Juice-Shop Instance
* This instance is used for Production
  
This code deploys an EC-2 instance in AWS and installs 15 instances of Docker containers with Juice Shop application.
Please refer to: https://owasp.org/www-project-juice-shop/

The code creates the GitHub Actions CI/CD pipeline, which is triggered manually by the instructor and contains 3 options: 
- Apply
- Plan
- Destroy

The terraform state is kept in the S3 bucket so it's always synced between the stages and runs.
![Actions Pipeline]([(https://github.com/maruapo/juice-prod/blob/main/images/steps.png])



# Usage:
Go to the Actions tab, select "Deploy Juice Shop in AWS" on the left sidebar, then click "Run workflow" with your desired selection.

# Variables
Update vars.tf file and provide a desired region and IP address of the support jump server.

