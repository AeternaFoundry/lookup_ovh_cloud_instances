output "cloud_instances_lookup_instances" {
  description = "Map of instances values across all cloud_instances_lookup, keyed the same as var.cloud_instances_lookup except keys with no instances are omitted"
  value       = { for k, v in data.ovh_cloud_instances.cloud_instances_lookup : k => v.instances if v.instances != null && length(v.instances) > 0 }
}
output "cloud_instances_lookup_service_name" {
  description = "Map of service_name values across all cloud_instances_lookup, keyed the same as var.cloud_instances_lookup except keys with no service_name are omitted"
  value       = { for k, v in data.ovh_cloud_instances.cloud_instances_lookup : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}

