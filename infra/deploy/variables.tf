variable "prefix" {
  description = "Prefix for all resources"
  type        = string
  default     = "raa"
}

variable "project" {
  description = "Project name for tagging resources"
  type        = string
  default     = "recipe-app-api"
}

variable "contact" {
  description = "Contact email for the project"
  type        = string
  default     = "nzeako_o@hotmail.com"
}

variable "db_username" {
  description = "username for the recipe app api database"
  type        = string
  default     = "recipeapp"

}

variable "db_password" {
  description = "Password for the Terraform database"
  type        = string

}
