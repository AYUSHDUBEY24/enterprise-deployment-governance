package kubernetes

deny contains msg if {
  not input.metadata.labels.app
  msg := "App label is mandatory"
}