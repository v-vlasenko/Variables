variable "mymap" {
  type = map(object({
    my_key = string
  }))

  validation {
    condition = alltrue(
       [for obj in keys(var.mymap) : can(regex("^my.*",obj))]
    )
    error_message = "Each map key should include key string."
  }

  #default = [{"key1" = "val1"}]
  default = {"my_key1" = "val1", "key2" = "val2"}
  #default = {"okey1" = "val1", "key2" = "val2"}
  #default = {"ok1" = "val1", "key2" = "val2"}
}
