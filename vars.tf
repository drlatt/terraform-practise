# terraform variables

variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
    default = "eu-west-1"
}

variable "AWS_SUBNET_ID" {
    default = "subnet-72749c15"
}

variable "AMIS" {
    type = "map"
    default = {
        us-east-1 = "ami-aa2ea6d0"
        us-west-2 = "ami-0def3275"
        eu-west-1 = "ami-8fd760f6"
    }
}
