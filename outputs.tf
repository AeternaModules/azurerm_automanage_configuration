output "automanage_configurations_id" {
  description = "Map of id values across all automanage_configurations, keyed the same as var.automanage_configurations"
  value       = { for k, v in azurerm_automanage_configuration.automanage_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "automanage_configurations_antimalware" {
  description = "Map of antimalware values across all automanage_configurations, keyed the same as var.automanage_configurations"
  value       = { for k, v in azurerm_automanage_configuration.automanage_configurations : k => v.antimalware if v.antimalware != null && length(v.antimalware) > 0 }
}
output "automanage_configurations_automation_account_enabled" {
  description = "Map of automation_account_enabled values across all automanage_configurations, keyed the same as var.automanage_configurations"
  value       = { for k, v in azurerm_automanage_configuration.automanage_configurations : k => v.automation_account_enabled if v.automation_account_enabled != null }
}
output "automanage_configurations_azure_security_baseline" {
  description = "Map of azure_security_baseline values across all automanage_configurations, keyed the same as var.automanage_configurations"
  value       = { for k, v in azurerm_automanage_configuration.automanage_configurations : k => v.azure_security_baseline if v.azure_security_baseline != null && length(v.azure_security_baseline) > 0 }
}
output "automanage_configurations_backup" {
  description = "Map of backup values across all automanage_configurations, keyed the same as var.automanage_configurations"
  value       = { for k, v in azurerm_automanage_configuration.automanage_configurations : k => v.backup if v.backup != null && length(v.backup) > 0 }
}
output "automanage_configurations_boot_diagnostics_enabled" {
  description = "Map of boot_diagnostics_enabled values across all automanage_configurations, keyed the same as var.automanage_configurations"
  value       = { for k, v in azurerm_automanage_configuration.automanage_configurations : k => v.boot_diagnostics_enabled if v.boot_diagnostics_enabled != null }
}
output "automanage_configurations_defender_for_cloud_enabled" {
  description = "Map of defender_for_cloud_enabled values across all automanage_configurations, keyed the same as var.automanage_configurations"
  value       = { for k, v in azurerm_automanage_configuration.automanage_configurations : k => v.defender_for_cloud_enabled if v.defender_for_cloud_enabled != null }
}
output "automanage_configurations_guest_configuration_enabled" {
  description = "Map of guest_configuration_enabled values across all automanage_configurations, keyed the same as var.automanage_configurations"
  value       = { for k, v in azurerm_automanage_configuration.automanage_configurations : k => v.guest_configuration_enabled if v.guest_configuration_enabled != null }
}
output "automanage_configurations_location" {
  description = "Map of location values across all automanage_configurations, keyed the same as var.automanage_configurations"
  value       = { for k, v in azurerm_automanage_configuration.automanage_configurations : k => v.location if v.location != null && length(v.location) > 0 }
}
output "automanage_configurations_log_analytics_enabled" {
  description = "Map of log_analytics_enabled values across all automanage_configurations, keyed the same as var.automanage_configurations"
  value       = { for k, v in azurerm_automanage_configuration.automanage_configurations : k => v.log_analytics_enabled if v.log_analytics_enabled != null }
}
output "automanage_configurations_name" {
  description = "Map of name values across all automanage_configurations, keyed the same as var.automanage_configurations"
  value       = { for k, v in azurerm_automanage_configuration.automanage_configurations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "automanage_configurations_resource_group_name" {
  description = "Map of resource_group_name values across all automanage_configurations, keyed the same as var.automanage_configurations"
  value       = { for k, v in azurerm_automanage_configuration.automanage_configurations : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "automanage_configurations_status_change_alert_enabled" {
  description = "Map of status_change_alert_enabled values across all automanage_configurations, keyed the same as var.automanage_configurations"
  value       = { for k, v in azurerm_automanage_configuration.automanage_configurations : k => v.status_change_alert_enabled if v.status_change_alert_enabled != null }
}
output "automanage_configurations_tags" {
  description = "Map of tags values across all automanage_configurations, keyed the same as var.automanage_configurations"
  value       = { for k, v in azurerm_automanage_configuration.automanage_configurations : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

