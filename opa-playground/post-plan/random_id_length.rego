package terraform

import rego.v1

min_byte_length := 16

deny contains reason if {
	some resource in input.tfplan.resource_changes
	resource.type == "random_id"
	resource.change.after.byte_length < min_byte_length
	reason := sprintf("%s: byte_length %d is below %d", [resource.address, resource.change.after.byte_length, min_byte_length])
}
