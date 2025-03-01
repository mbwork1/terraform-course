variable "AWS_REGION" {
  default = "us-east-2"
}

variable "igu-key-private" {
  default = "~/Downloads/igu-key.pem"
}

variable "igu-key-public" {
  default = "~/Downloads/igu-key.pub"
}

variable "ECS_INSTANCE_TYPE" {
  default = "t2.micro"
}

variable "ECS_AMIS" {
  type = map(string)
  default = {
    us-east-2 = "ami-0d635f3367bb86b3e" #ECS Optimized Amazon Linux 2 AMI
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-844e0bf7"
  }
}

# Full List: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html

variable "AMIS" {
  type = map(string)
  default = {
    us-east-2 = "ami-0f6bd2f212e409001"
    us-west-2 = "ami-0637e7dc7fcc9a2d9"
    eu-west-1 = "ami-081ff4b9aa4e81a08"
  }
}

variable "INSTANCE_DEVICE_NAME" {
  default = "/dev/xvdh"
}

variable "JENKINS_VERSION" {
  default = "2.319.2"
}

