include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "../../s3-module"
}

inputs = {
  bucket = "test-bucket"
  tags = {
    Owner       = "Vahe Stepanyan"
    Environment = "prod"
  }
}
