variable "name" {
  type = string
}

variable "region" {
  type = string
}

variable "administrator_id_list" {
  type = list(string)
}

variable "tags" {
  default = {}
}
