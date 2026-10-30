package terraform

import data.lib

max_changes := 10

deny[reason] {
	count(lib.changed_resources) > max_changes
	reason := sprintf("The plan changes %d resources, the limit is %d", [count(lib.changed_resources), max_changes])
}
