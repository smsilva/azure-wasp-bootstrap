variable "name" {
  type    = string
  default = "wasp-na-sbx"
}

variable "region" {
  type    = string
  default = "eastus2"
}

variable "administrator_id_list" {
  type = list(string)
  default = [
    "805a3d92-4178-4ad1-a0d6-70eae41a463a", # cloud-admin
  ]
}

variable "tags" {
  default = {}
}
