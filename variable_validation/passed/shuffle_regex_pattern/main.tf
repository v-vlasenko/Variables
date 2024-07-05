resource "random_pet" "pet" {
 prefix = var.prefix
 separator = "."
 length = 1
 }
variable "prefix" {
  type        = string
  description = "What fruit to pick?"
  default     = "lemon"

  validation {
    condition     = can(regex("^(lemon|apple|mango|banana|cherry)$", var.prefix))
    error_message = "Invalid fruit selected, only allowed fruits are: 'lemon', 'apple', 'mango', 'banana', 'cherry'. Default 'apple'"
  }
}
