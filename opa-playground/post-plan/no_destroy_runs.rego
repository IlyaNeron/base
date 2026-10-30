package terraform

deny["Destroy runs need a change ticket"] {
	input.tfrun.is_destroy
}
