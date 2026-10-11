output "priority_classes_id" {
  description = "Map of id values across all priority_classes, keyed the same as var.priority_classes except keys with no id are omitted"
  value       = { for k, v in kubernetes_priority_class.priority_classes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "priority_classes_description" {
  description = "Map of description values across all priority_classes, keyed the same as var.priority_classes except keys with no description are omitted"
  value       = { for k, v in kubernetes_priority_class.priority_classes : k => v.description if v.description != null && length(v.description) > 0 }
}
output "priority_classes_global_default" {
  description = "Map of global_default values across all priority_classes, keyed the same as var.priority_classes except keys with no global_default are omitted"
  value       = { for k, v in kubernetes_priority_class.priority_classes : k => v.global_default if v.global_default != null }
}
output "priority_classes_metadata" {
  description = "Map of metadata values across all priority_classes, keyed the same as var.priority_classes except keys with no metadata are omitted"
  value       = { for k, v in kubernetes_priority_class.priority_classes : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}
output "priority_classes_preemption_policy" {
  description = "Map of preemption_policy values across all priority_classes, keyed the same as var.priority_classes except keys with no preemption_policy are omitted"
  value       = { for k, v in kubernetes_priority_class.priority_classes : k => v.preemption_policy if v.preemption_policy != null && length(v.preemption_policy) > 0 }
}
output "priority_classes_value" {
  description = "Map of value values across all priority_classes, keyed the same as var.priority_classes except keys with no value are omitted"
  value       = { for k, v in kubernetes_priority_class.priority_classes : k => v.value if v.value != null }
}

