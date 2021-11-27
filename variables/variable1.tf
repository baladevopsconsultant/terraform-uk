variable "instance_type"{
 type = list
 default = ["t2.medium","t2.micro"]
}
variable "amiid"{
 default = "ami-0b0af3577fe5e3532"
}
variable "tagname"{
 type = list
 default = ["RHEL_8_1","RHEL_8_2"]
}

variable "region"{
 type = map
 default = {
  "us-east-1" = "t2.micro"
  "us-east-2" = "t2.nano"
 }
}

variable "regionname"{
 default = "us-east-2"
}
