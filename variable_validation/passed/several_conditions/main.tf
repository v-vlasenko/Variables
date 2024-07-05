resource "random_pet" "pet" {
 prefix = var.prefix
 separator = "."
 length = 5
 }

variable "prefix" {
  default = "MMMMMMMS1@"
  type        = string
  description = "The prefix used for the GCP projects"

  validation {
    condition     = can(regex("^w+$", var.prefix))
    # Not allowed due to the use of a variable:
    # error_message = "Invalid value [${var.prefix}]. The prefix value can only contain letters and numbers."
    error_message = "The prefix value can only contain letters and numbers."
  }

  validation {
    condition     = length(var.prefix) > 2 && length(var.prefix) <= 6
    # Not allowed due to the use of a variable:
    # error_message = "Invalid value [${var.prefix}]. The prefix value should contain at least 3 characters and can not contain more than 6 characters"
    error_message = "The prefix value should contain at least 3 characters and can not contain more than 6 characters"
  }
}
