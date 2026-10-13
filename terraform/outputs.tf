output "s3_bucket_name" {
  description = "Nom du bucket S3 des rapports de securite"
  value       = aws_s3_bucket.security_reports.bucket
}

output "sns_topic_arn" {
  description = "ARN du topic SNS des alertes de securite"
  value       = aws_sns_topic.security_alerts.arn
}
output "github_actions_role_arn" {
  description = "ARN du role IAM utilise par GitHub Actions"
  value       = aws_iam_role.github_actions.arn
}