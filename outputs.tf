output "bedrockagentcore_harnesses_allowed_tools" {
  description = "Map of allowed_tools values across all bedrockagentcore_harnesses, keyed the same as var.bedrockagentcore_harnesses"
  value       = { for k, v in aws_bedrockagentcore_harness.bedrockagentcore_harnesses : k => v.allowed_tools if v.allowed_tools != null && length(v.allowed_tools) > 0 }
}
output "bedrockagentcore_harnesses_arn" {
  description = "Map of arn values across all bedrockagentcore_harnesses, keyed the same as var.bedrockagentcore_harnesses"
  value       = { for k, v in aws_bedrockagentcore_harness.bedrockagentcore_harnesses : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "bedrockagentcore_harnesses_authorizer_configuration" {
  description = "Map of authorizer_configuration values across all bedrockagentcore_harnesses, keyed the same as var.bedrockagentcore_harnesses"
  value       = { for k, v in aws_bedrockagentcore_harness.bedrockagentcore_harnesses : k => v.authorizer_configuration if v.authorizer_configuration != null && length(v.authorizer_configuration) > 0 }
}
output "bedrockagentcore_harnesses_environment" {
  description = "Map of environment values across all bedrockagentcore_harnesses, keyed the same as var.bedrockagentcore_harnesses"
  value       = { for k, v in aws_bedrockagentcore_harness.bedrockagentcore_harnesses : k => v.environment if v.environment != null && length(v.environment) > 0 }
}
output "bedrockagentcore_harnesses_environment_artifact" {
  description = "Map of environment_artifact values across all bedrockagentcore_harnesses, keyed the same as var.bedrockagentcore_harnesses"
  value       = { for k, v in aws_bedrockagentcore_harness.bedrockagentcore_harnesses : k => v.environment_artifact if v.environment_artifact != null && length(v.environment_artifact) > 0 }
}
output "bedrockagentcore_harnesses_environment_variables" {
  description = "Map of environment_variables values across all bedrockagentcore_harnesses, keyed the same as var.bedrockagentcore_harnesses"
  value       = { for k, v in aws_bedrockagentcore_harness.bedrockagentcore_harnesses : k => v.environment_variables if v.environment_variables != null && length(v.environment_variables) > 0 }
  sensitive   = true
}
output "bedrockagentcore_harnesses_execution_role_arn" {
  description = "Map of execution_role_arn values across all bedrockagentcore_harnesses, keyed the same as var.bedrockagentcore_harnesses"
  value       = { for k, v in aws_bedrockagentcore_harness.bedrockagentcore_harnesses : k => v.execution_role_arn if v.execution_role_arn != null && length(v.execution_role_arn) > 0 }
}
output "bedrockagentcore_harnesses_harness_id" {
  description = "Map of harness_id values across all bedrockagentcore_harnesses, keyed the same as var.bedrockagentcore_harnesses"
  value       = { for k, v in aws_bedrockagentcore_harness.bedrockagentcore_harnesses : k => v.harness_id if v.harness_id != null && length(v.harness_id) > 0 }
}
output "bedrockagentcore_harnesses_harness_name" {
  description = "Map of harness_name values across all bedrockagentcore_harnesses, keyed the same as var.bedrockagentcore_harnesses"
  value       = { for k, v in aws_bedrockagentcore_harness.bedrockagentcore_harnesses : k => v.harness_name if v.harness_name != null && length(v.harness_name) > 0 }
}
output "bedrockagentcore_harnesses_max_iterations" {
  description = "Map of max_iterations values across all bedrockagentcore_harnesses, keyed the same as var.bedrockagentcore_harnesses"
  value       = { for k, v in aws_bedrockagentcore_harness.bedrockagentcore_harnesses : k => v.max_iterations if v.max_iterations != null }
}
output "bedrockagentcore_harnesses_max_tokens" {
  description = "Map of max_tokens values across all bedrockagentcore_harnesses, keyed the same as var.bedrockagentcore_harnesses"
  value       = { for k, v in aws_bedrockagentcore_harness.bedrockagentcore_harnesses : k => v.max_tokens if v.max_tokens != null }
}
output "bedrockagentcore_harnesses_memory" {
  description = "Map of memory values across all bedrockagentcore_harnesses, keyed the same as var.bedrockagentcore_harnesses"
  value       = { for k, v in aws_bedrockagentcore_harness.bedrockagentcore_harnesses : k => v.memory if v.memory != null && length(v.memory) > 0 }
}
output "bedrockagentcore_harnesses_model" {
  description = "Map of model values across all bedrockagentcore_harnesses, keyed the same as var.bedrockagentcore_harnesses"
  value       = { for k, v in aws_bedrockagentcore_harness.bedrockagentcore_harnesses : k => v.model if v.model != null && length(v.model) > 0 }
}
output "bedrockagentcore_harnesses_region" {
  description = "Map of region values across all bedrockagentcore_harnesses, keyed the same as var.bedrockagentcore_harnesses"
  value       = { for k, v in aws_bedrockagentcore_harness.bedrockagentcore_harnesses : k => v.region if v.region != null && length(v.region) > 0 }
}
output "bedrockagentcore_harnesses_skill" {
  description = "Map of skill values across all bedrockagentcore_harnesses, keyed the same as var.bedrockagentcore_harnesses"
  value       = { for k, v in aws_bedrockagentcore_harness.bedrockagentcore_harnesses : k => v.skill if v.skill != null && length(v.skill) > 0 }
}
output "bedrockagentcore_harnesses_system_prompt" {
  description = "Map of system_prompt values across all bedrockagentcore_harnesses, keyed the same as var.bedrockagentcore_harnesses"
  value       = { for k, v in aws_bedrockagentcore_harness.bedrockagentcore_harnesses : k => v.system_prompt if v.system_prompt != null && length(v.system_prompt) > 0 }
  sensitive   = true
}
output "bedrockagentcore_harnesses_tags" {
  description = "Map of tags values across all bedrockagentcore_harnesses, keyed the same as var.bedrockagentcore_harnesses"
  value       = { for k, v in aws_bedrockagentcore_harness.bedrockagentcore_harnesses : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "bedrockagentcore_harnesses_tags_all" {
  description = "Map of tags_all values across all bedrockagentcore_harnesses, keyed the same as var.bedrockagentcore_harnesses"
  value       = { for k, v in aws_bedrockagentcore_harness.bedrockagentcore_harnesses : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "bedrockagentcore_harnesses_timeout_seconds" {
  description = "Map of timeout_seconds values across all bedrockagentcore_harnesses, keyed the same as var.bedrockagentcore_harnesses"
  value       = { for k, v in aws_bedrockagentcore_harness.bedrockagentcore_harnesses : k => v.timeout_seconds if v.timeout_seconds != null }
}
output "bedrockagentcore_harnesses_tool" {
  description = "Map of tool values across all bedrockagentcore_harnesses, keyed the same as var.bedrockagentcore_harnesses"
  value       = { for k, v in aws_bedrockagentcore_harness.bedrockagentcore_harnesses : k => v.tool if v.tool != null && length(v.tool) > 0 }
  sensitive   = true
}
output "bedrockagentcore_harnesses_truncation" {
  description = "Map of truncation values across all bedrockagentcore_harnesses, keyed the same as var.bedrockagentcore_harnesses"
  value       = { for k, v in aws_bedrockagentcore_harness.bedrockagentcore_harnesses : k => v.truncation if v.truncation != null && length(v.truncation) > 0 }
}

