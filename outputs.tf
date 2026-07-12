output "automanage_configurations_antimalware" {
  description = "Map of antimalware values across all automanage_configurations, keyed the same as var.automanage_configurations"
  value       = { for k, v in azurerm_automanage_configuration.automanage_configurations : k => v.antimalware }
}
output "automanage_configurations_automation_account_enabled" {
  description = "Map of automation_account_enabled values across all automanage_configurations, keyed the same as var.automanage_configurations"
  value       = { for k, v in azurerm_automanage_configuration.automanage_configurations : k => v.automation_account_enabled }
}
output "automanage_configurations_azure_security_baseline" {
  description = "Map of azure_security_baseline values across all automanage_configurations, keyed the same as var.automanage_configurations"
  value       = { for k, v in azurerm_automanage_configuration.automanage_configurations : k => v.azure_security_baseline }
}
output "automanage_configurations_backup" {
  description = "Map of backup values across all automanage_configurations, keyed the same as var.automanage_configurations"
  value       = { for k, v in azurerm_automanage_configuration.automanage_configurations : k => v.backup }
}
output "automanage_configurations_boot_diagnostics_enabled" {
  description = "Map of boot_diagnostics_enabled values across all automanage_configurations, keyed the same as var.automanage_configurations"
  value       = { for k, v in azurerm_automanage_configuration.automanage_configurations : k => v.boot_diagnostics_enabled }
}
output "automanage_configurations_defender_for_cloud_enabled" {
  description = "Map of defender_for_cloud_enabled values across all automanage_configurations, keyed the same as var.automanage_configurations"
  value       = { for k, v in azurerm_automanage_configuration.automanage_configurations : k => v.defender_for_cloud_enabled }
}
output "automanage_configurations_guest_configuration_enabled" {
  description = "Map of guest_configuration_enabled values across all automanage_configurations, keyed the same as var.automanage_configurations"
  value       = { for k, v in azurerm_automanage_configuration.automanage_configurations : k => v.guest_configuration_enabled }
}
output "automanage_configurations_location" {
  description = "Map of location values across all automanage_configurations, keyed the same as var.automanage_configurations"
  value       = { for k, v in azurerm_automanage_configuration.automanage_configurations : k => v.location }
}
output "automanage_configurations_log_analytics_enabled" {
  description = "Map of log_analytics_enabled values across all automanage_configurations, keyed the same as var.automanage_configurations"
  value       = { for k, v in azurerm_automanage_configuration.automanage_configurations : k => v.log_analytics_enabled }
}
output "automanage_configurations_name" {
  description = "Map of name values across all automanage_configurations, keyed the same as var.automanage_configurations"
  value       = { for k, v in azurerm_automanage_configuration.automanage_configurations : k => v.name }
}
output "automanage_configurations_resource_group_name" {
  description = "Map of resource_group_name values across all automanage_configurations, keyed the same as var.automanage_configurations"
  value       = { for k, v in azurerm_automanage_configuration.automanage_configurations : k => v.resource_group_name }
}
output "automanage_configurations_status_change_alert_enabled" {
  description = "Map of status_change_alert_enabled values across all automanage_configurations, keyed the same as var.automanage_configurations"
  value       = { for k, v in azurerm_automanage_configuration.automanage_configurations : k => v.status_change_alert_enabled }
}
output "automanage_configurations_tags" {
  description = "Map of tags values across all automanage_configurations, keyed the same as var.automanage_configurations"
  value       = { for k, v in azurerm_automanage_configuration.automanage_configurations : k => v.tags }
}

