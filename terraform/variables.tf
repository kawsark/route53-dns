variable "zone" {
  default = "kawsar.hashidemos.io"
}

variable "static_records" {
  type = map
  default = {"example" = "1.1.1.1" }
}
