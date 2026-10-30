package terraform

import data.lib

deny[reason] {
	resource := lib.changed_resources[_]
	lib.replaced(resource)
	resource.type != "terraform_data"
	reason := sprintf("%s would be replaced (delete and create)", [resource.address])
}
