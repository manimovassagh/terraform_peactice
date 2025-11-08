LocalStack + Terraform quick start

This project includes a minimal LocalStack + Terraform example so you can practice AWS resources locally without an AWS account.

Files added:
- `docker-compose.yml` - runs LocalStack with S3 enabled on port 4566
- `providers_aws.tf` - Terraform AWS provider configured to point at LocalStack
- `s3.tf` - example `aws_s3_bucket` resource
- `outputs.tf` - outputs the created bucket id

Quick start (macOS / zsh):

1) Start LocalStack

```bash
cd /Users/mani/Documents/Projects/terraform_peactice
docker compose up -d
```

2) Initialize and apply Terraform

```bash
terraform init
terraform validate
terraform apply -auto-approve
```

3) Verify

```bash
aws --endpoint-url=http://localhost:4566 s3 ls
# Or use terraform output
terraform output
```

Notes
- This setup uses fake credentials (`test`/`test`) and points the AWS provider at LocalStack's edge port `4566`.
- If you run into provider version issues, adjust the `version` in `providers_aws.tf` to match your Terraform CLI.
