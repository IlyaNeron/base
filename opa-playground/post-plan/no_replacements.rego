package terraform

import data.lib
import rego.v1

deny contains reason if {
	some resource in lib.changed_resources
	lib.replaced(resource)
	reason := sprintf("%s would be replaced (delete and create)", [resource.address])
}
