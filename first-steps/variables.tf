/*
variable "instance_type" {
   type = string
   default = "t2.micro"
}
*/

variable "instance_type" {
   type = map
   default = {
        "example" = "t2.micro"
        "example2" = "t3.micro"
   }
}

variable "aws_region" {
   type = string
   default = "us-east-2" 
}

variable "zone_id" {
  description = "The ID of the Route 53 hosted zone"
  type        = string
  default     = "Z06785081SQG7NOKLWXAV"
}