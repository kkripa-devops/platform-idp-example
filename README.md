Sample Internal Developer Platform Setup
## Internal Developer Platform Example

This is a minimal internal developer platform setup using:
- .NET Core for app logic
- Docker to containerize
- Azure Pipelines for CI/CD
- Terraform to provision Azure App Service

### Steps to Try Locally ###
1. Clone repo
2. Install Docker, .NET SDK 6, Terraform
3. Run `dotnet run --project app` to test locally
4. Use `docker build -t sample .` to containerize
5. Set up Azure Pipeline and deploy
6. Run `terraform init && terraform apply` in `/terraform`
