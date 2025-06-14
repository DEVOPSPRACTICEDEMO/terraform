variable "project" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}

variable "Component" {
  default = "cart"
}

variable "common_tags" {
    default = {
        Project = "roboshop"
        Terraform = "true"
    }
}
/* variable "final-name" {
    default = "${var.project}-${var.environment}-${var.Component}"
} */

# ec2 name =cart
# ec2 name = roboshop-dev-cart