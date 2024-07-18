terraform {
    required_providers {
        scalr = {
            source = "registry.scalr.io/scalr/scalr"
            version= "1.12.1"
        }
    }
}
  

resource "scalr_webhook" "example1" {
  name         = "my-webhook-1"
  enabled      = true
  url          = var.webhook_url
  secret_key   = "my-secret-key"
  timeout      = 15
  max_attempts = 3
  events       = ["run:completed", "run:errored"]
  environments = ["env-ugnpuhbhe73a4e0"]
  header {
    name  = "header1"
    value = "value1"
  }
  header {
    name  = "header2"
    value = "value2"
  }
}

# Old-style webhook resource (deprecated):
resource "scalr_webhook" "example2" {
  name           = "my-webhook-2"
  enabled        = true
  endpoint_id    = "ep-xxxxxxxxxx"
  events         = ["run:completed", "run:errored"]
  workspace_id   = "ws-xxxxxxxxxx"
  environment_id = "env-xxxxxxxxxx"
}
