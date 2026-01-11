variable "automanage_configurations" {
  description = <<EOT
Map of automanage_configurations, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - automation_account_enabled
    - boot_diagnostics_enabled
    - defender_for_cloud_enabled
    - guest_configuration_enabled
    - log_analytics_enabled
    - status_change_alert_enabled
    - tags
    - antimalware (block):
        - exclusions (optional, block):
            - extensions (optional)
            - paths (optional)
            - processes (optional)
        - real_time_protection_enabled (optional)
        - scheduled_scan_day (optional)
        - scheduled_scan_enabled (optional)
        - scheduled_scan_time_in_minutes (optional)
        - scheduled_scan_type (optional)
    - azure_security_baseline (block):
        - assignment_type (optional)
    - backup (block):
        - instant_rp_retention_range_in_days (optional)
        - policy_name (optional)
        - retention_policy (optional, block):
            - daily_schedule (optional, block):
                - retention_duration (optional, block):
                    - count (optional)
                    - duration_type (optional)
                - retention_times (optional)
            - retention_policy_type (optional)
            - weekly_schedule (optional, block):
                - retention_duration (optional, block):
                    - count (optional)
                    - duration_type (optional)
                - retention_times (optional)
        - schedule_policy (optional, block):
            - schedule_policy_type (optional)
            - schedule_run_days (optional)
            - schedule_run_frequency (optional)
            - schedule_run_times (optional)
        - time_zone (optional)
EOT

  type = map(object({
    location                    = string
    name                        = string
    resource_group_name         = string
    automation_account_enabled  = optional(bool, false)
    boot_diagnostics_enabled    = optional(bool, false)
    defender_for_cloud_enabled  = optional(bool, false)
    guest_configuration_enabled = optional(bool, false)
    log_analytics_enabled       = optional(bool, false)
    status_change_alert_enabled = optional(bool, false)
    tags                        = optional(map(string))
    antimalware = optional(object({
      exclusions = optional(object({
        extensions = optional(string)
        paths      = optional(string)
        processes  = optional(string)
      }))
      real_time_protection_enabled   = optional(bool, false)
      scheduled_scan_day             = optional(number, 8)
      scheduled_scan_enabled         = optional(bool, false)
      scheduled_scan_time_in_minutes = optional(number, 0)
      scheduled_scan_type            = optional(string, "Quick")
    }))
    azure_security_baseline = optional(object({
      assignment_type = optional(string, "ApplyAndAutoCorrect")
    }))
    backup = optional(object({
      instant_rp_retention_range_in_days = optional(number, 5)
      policy_name                        = optional(string)
      retention_policy = optional(object({
        daily_schedule = optional(object({
          retention_duration = optional(object({
            count         = optional(number)
            duration_type = optional(string, "Days")
          }))
          retention_times = optional(list(string))
        }))
        retention_policy_type = optional(string, "LongTermRetentionPolicy")
        weekly_schedule = optional(object({
          retention_duration = optional(object({
            count         = optional(number)
            duration_type = optional(string, "Weeks")
          }))
          retention_times = optional(list(string))
        }))
      }))
      schedule_policy = optional(object({
        schedule_policy_type   = optional(string, "SimpleSchedulePolicy")
        schedule_run_days      = optional(list(string))
        schedule_run_frequency = optional(string, "Daily")
        schedule_run_times     = optional(list(string))
      }))
      time_zone = optional(string, "UTC")
    }))
  }))
}

