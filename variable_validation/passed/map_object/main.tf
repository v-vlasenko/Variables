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
       #[for value in values(var.mymap) : regex("[a-z]+", value.my_key) == "val"]
 [false]
    )
    error_message = "Each map key should include key string."
  }

}
