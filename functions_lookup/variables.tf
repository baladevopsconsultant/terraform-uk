variable "vm" {
  type = map(any)
  default = {
    us-east-1 = "ami-0b0af3577fe5e3532"
    us-east-2 = "ami-0ba62214afa52bec7"
  }
}

variable "vmname" {
  type    = list(any)
  default = ["linux1", "linux2"]
}

variable "northamericaregion1" {
  default = "us-east-3"
}

variable "northamericaregion2" {
  default = "ami-0ba62214afa52bec7"
}

variable "region" {
  default = "us-east-2"
}
