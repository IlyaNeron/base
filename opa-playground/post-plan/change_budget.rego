package terraform

import data.lib
import rego.v1

max_changes := 10

deny contains reason if {
	count(lib.changed_resources) > max_changes
	reason := sprintf("The plan changes %d resources, the limit is %d", [count(lib.changed_resources), max_changes])
}
