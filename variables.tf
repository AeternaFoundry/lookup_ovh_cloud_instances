variable "cloud_instances_lookup" {
  description = <<EOT
Map of cloud_instances_lookup, attributes below
Required:
    - service_name
EOT

  type = map(object({
    service_name = string
  }))
}

