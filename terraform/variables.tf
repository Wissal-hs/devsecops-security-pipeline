variable "aws_region" {
  description = "Region AWS utilisee pour le projet"
  type        = string
  default     = "eu-west-3"
}

variable "project_name" {
  description = "Nom du projet DevSecOps"
  type        = string
  default     = "devsecops-security-pipeline"
}

variable "notification_email" {
  description = "Adresse e-mail destinee aux alertes de securite"
  type        = string
  sensitive   = true
}
