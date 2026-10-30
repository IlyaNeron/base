package lib

import rego.v1

changed_resources contains resource if {
	some resource in input.tfplan.resource_changes
	not no_op(resource)
}

replaced(resource) if {
	"delete" in resource.change.actions
	"create" in resource.change.actions
}

no_op(resource) if resource.change.actions == ["no-op"]
