package terraform

import data.lib

deny[reason] {
	resource := lib.changed_resources[_]
	lib.replaced(resource)
	reason := sprintf("%s would be replaced (delete and create)", [resource.address])
}
