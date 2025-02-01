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