output "cd_user_access_key_id" {
  value       = aws_iam_access_key.cd.id
  description = "Access key id for the cd user"
}

output "cd_user_access_key_secret" {
  value       = aws_iam_access_key.cd.secret
  sensitive   = true
  description = "Secret access key for the cd user"
}


output "ecr_repo_app" {
  value       = aws_ecr_repository.app.repository_url
  description = "ECR repository URL for the app image"

}

output "ecr_repo_proxy" {
  value       = aws_ecr_repository.proxy.repository_url
  description = "ECR repository URL for the proxy image"

}
