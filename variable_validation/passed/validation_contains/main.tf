resource "random_pet" "pet" {
 prefix = var.prefix
 separator = "."
 length = 1
 }
variable "prefix" {
  type        = string
  description = "What fruit to pick?"
  default     = "appl"

  validation {
    condition = contains(
      ["lemon", "cherry", "apple", "banana", "mango"],
      var.prefix
    ) || ""
    error_message = "Err: prefix is not valid."
  }
}

