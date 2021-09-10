variable "my_variable" {
  default = null
}

variable "region" {
  default = "us-east-2"
}

variable "docker_ports" {
  type = list(object({
    internal = number
    external = number
    protocol = string
  }))
  default = [
    {
      internal = 8300
      external = 8300
      protocol = "tcp"
    }
  ]
}

variable "some_value" {
  default = ""
}

variable "some_value2" {
  default = "null"
}
