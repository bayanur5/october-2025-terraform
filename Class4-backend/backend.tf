terraform {
  backend "s3" {
    bucket = "kaizen-bayanurd"
    key    = "hello/terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}
