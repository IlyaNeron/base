package terraform

min_byte_length := 16

deny[reason] {
	resource := input.tfplan.resource_changes[_]
	resource.type == "random_id"
	resource.change.after.byte_length < min_byte_length
	reason := sprintf("%s: byte_length %d is below %d", [resource.address, resource.change.after.byte_length, min_byte_length])
}
