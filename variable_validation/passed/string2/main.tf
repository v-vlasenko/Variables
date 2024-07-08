variable "timestamp" {
  type        = string
  default = "2018-01-02T23:12:01Z"

  validation {
    # formatdate fails if the second argument is not a valid timestamp
    condition     = can(formatdate("DD MMM YYYY", var.timestamp))
    error_message = "The timestamp argument requires a valid RFC 3339 timestamp."
  }
}
