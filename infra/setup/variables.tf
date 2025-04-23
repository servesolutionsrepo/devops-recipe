variable "tf_state_bucket" {
  description = "S3 bucket for Terraform state"
  type        = string
  default     = "john-recipie-app-1285w7354-u94v-52y8-f338-916055440004"

}

variable "tf_state_lock_table" {
  description = "Name of dynamodb for TF state locking"
  type        = string
  default     = "devops-recipe-app-api-tf-lock"
}

variable "project" {
  description = "Project name for tagging resources"
  type        = string
  default     = "recipe-app-api"

}

variable "contact" {
  description = "Contact person for the project"
  type        = string
  default     = "nzeako_o@hotmail.com"
}
