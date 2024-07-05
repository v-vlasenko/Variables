resource "random_pet" "pet" {
 prefix = var.prefix
 separator = "."
 }
variable "prefix" {
  type        = string
  description = "What fruit to pick?"
  length = 5

validation {
    condition     = length(var.prefix) <= 3
    error_message = "Err: prefix is too long."
  }
   validation {
    condition     = can(regex("^(lemon|apple|mango|banana|cherry)$", var.prefix))
    error_message = "Invalid fruit selected, only allowed fruits are: 'lemon', 'apple', 'mango', 'banana', 'cherry'. Default 'apple',Invalid fruit selected, only allowed fruits are: 'lemon', 'apple', 'mango', 'banana', 'cherry'. Default 'apple'"
  }
}
