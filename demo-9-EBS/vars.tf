variable "AWS_REGION" {
  default = "us-east-2"
}

variable "igu-key-private" {
  default = "~/Downloads/igu-key.pem"
}

variable "igu-key-public" {
  default = "~/Downloads/igu-key.pub"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-2 = "ami-0f6bd2f212e409001"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-844e0bf7"
  }
}