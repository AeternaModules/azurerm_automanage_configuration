output "automanage_configurations" {
  description = "All automanage_configuration resources"
  value       = azurerm_automanage_configuration.automanage_configurations
}
output "automanage_configurations_antimalware" {
  description = "List of antimalware values across all automanage_configurations"
  value       = [for k, v in azurerm_automanage_configuration.automanage_configurations : v.antimalware]
}
output "automanage_configurations_automation_account_enabled" {
  description = "List of automation_account_enabled values across all automanage_configurations"
  value       = [for k, v in azurerm_automanage_configuration.automanage_configurations : v.automation_account_enabled]
}
output "automanage_configurations_azure_security_baseline" {
  description = "List of azure_security_baseline values across all automanage_configurations"
  value       = [for k, v in azurerm_automanage_configuration.automanage_configurations : v.azure_security_baseline]
}
output "automanage_configurations_backup" {
  description = "List of backup values across all automanage_configurations"
  value       = [for k, v in azurerm_automanage_configuration.automanage_configurations : v.backup]
}
output "automanage_configurations_boot_diagnostics_enabled" {
  description = "List of boot_diagnostics_enabled values across all automanage_configurations"
  value       = [for k, v in azurerm_automanage_configuration.automanage_configurations : v.boot_diagnostics_enabled]
}
output "automanage_configurations_defender_for_cloud_enabled" {
  description = "List of defender_for_cloud_enabled values across all automanage_configurations"
  value       = [for k, v in azurerm_automanage_configuration.automanage_configurations : v.defender_for_cloud_enabled]
}
output "automanage_configurations_guest_configuration_enabled" {
  description = "List of guest_configuration_enabled values across all automanage_configurations"
  value       = [for k, v in azurerm_automanage_configuration.automanage_configurations : v.guest_configuration_enabled]
}
output "automanage_configurations_location" {
  description = "List of location values across all automanage_configurations"
  value       = [for k, v in azurerm_automanage_configuration.automanage_configurations : v.location]
}
output "automanage_configurations_log_analytics_enabled" {
  description = "List of log_analytics_enabled values across all automanage_configurations"
  value       = [for k, v in azurerm_automanage_configuration.automanage_configurations : v.log_analytics_enabled]
}
output "automanage_configurations_name" {
  description = "List of name values across all automanage_configurations"
  value       = [for k, v in azurerm_automanage_configuration.automanage_configurations : v.name]
}
output "automanage_configurations_resource_group_name" {
  description = "List of resource_group_name values across all automanage_configurations"
  value       = [for k, v in azurerm_automanage_configuration.automanage_configurations : v.resource_group_name]
}
output "automanage_configurations_status_change_alert_enabled" {
  description = "List of status_change_alert_enabled values across all automanage_configurations"
  value       = [for k, v in azurerm_automanage_configuration.automanage_configurations : v.status_change_alert_enabled]
}
output "automanage_configurations_tags" {
  description = "List of tags values across all automanage_configurations"
  value       = [for k, v in azurerm_automanage_configuration.automanage_configurations : v.tags]
}

