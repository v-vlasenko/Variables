variable "mymap" {
  type = map(object({
    my_key = string
  }))

  default = {
log1 = {my_key: "val%"}, 
log2 = {my_key: "val2"}
}

  validation {
    condition = alltrue(
       [for value in values(var.mymap) : regex("val[a-z]+", value.my_key) == "val"]
    )
    error_message = "Each map key should include key string."
  }

}
