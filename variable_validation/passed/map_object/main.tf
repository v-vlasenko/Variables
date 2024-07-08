variable "mymap" {
  type = map(object({
    my_key = string
  }))

  validation {
    condition = alltrue(
       [for obj in values(var.mymap) : regex("val[a-z]+", obj) == "val"]
    )
    error_message = "Each map key should include key string."
  }

  #default = [{"key1" = "val1"}]
  default = [{"my_key" = "val%"}, {"my_key" = "val2"}]
  #default = {"okey1" = "val1", "key2" = "val2"}
  #default = {"ok1" = "val1", "key2" = "val2"}
}
