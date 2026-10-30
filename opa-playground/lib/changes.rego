package lib

changed_resources[resource] {
	resource := input.tfplan.resource_changes[_]
	not no_op(resource)
}

replaced(resource) {
	resource.change.actions[_] == "delete"
	resource.change.actions[_] == "create"
}

no_op(resource) {
	resource.change.actions == ["no-op"]
}
