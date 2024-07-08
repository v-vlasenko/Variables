variable "timestamp" {
  type        = string
default = "02 Jan 2018"

  validation {
    # formatdate fails if the second argument is not a valid timestamp
    condition     = can(formatdate("DD MMM YYYY", var.timestamp))
    error_message = "The timestamp argument requires a valid RFC 3339 timestamp."
  }
}
