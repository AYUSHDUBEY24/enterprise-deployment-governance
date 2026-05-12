package kubernetes

deny[msg] {
  not input.metadata.labels.app
  msg := "App label is mandatory"
}