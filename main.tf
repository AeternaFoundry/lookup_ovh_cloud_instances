data "ovh_cloud_instances" "cloud_instances_lookup" {
  for_each = var.cloud_instances_lookup

  service_name = each.value.service_name
}

