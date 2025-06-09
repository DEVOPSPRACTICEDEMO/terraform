variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "AMI ID of devops-practice RHEL9"
}

variable "instance_type" {
    default = "t3.micro"  
}

variable "ec2_tags" {
    type = map(string)
    default = {
        Name = "ec2-using-terraform"
        Purpose = "Variables-demo"
    }
}

variable "sg_name" {
    default = "allow-all"
  
}

variable "sg_description" {
    default = "allowing all ports from internet"  
}

variable "from_port" {
    default = 0
}

variable "to_port" {
    type = number
    default = 0 
}

variable "cidr_blocks" {
    type = list(string)
    default = [ "0.0.0.0/0" ]  
}

variable "sg_tags" {
    default = {
        Name = "allow-all"
    } 
}

variable "environment" {
    default = "prod"  
}

variable "instances" {
    default = {
        mongodb = "t3.micro" # each keyword is assigned for every iteration, you will get each.key and each.value
        frontend = "t3.micro"
        rabbitmq = "t3.micro"
        mysql = "t3.small"
    }
  
}

variable "zone_id" {
    default = "Z07092431FXHTW58PX8NM"
  
}

variable "domain_name" {
    default = "skptech.site"  
}