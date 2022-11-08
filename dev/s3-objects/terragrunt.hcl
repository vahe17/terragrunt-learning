include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "git@github.com:terraform-aws-modules/terraform-aws-s3-bucket.git//modules/object"
}

dependency "s3" {
  config_path = "../s3"
}

inputs = {
  bucket  = dependency.s3.outputs.s3_bucket_id
  key     = "test_file.txt"
  content = "test text"
  tags = {
    Owner       = "Vahe Stepanyan"
    Environment = "dev"
  }
}

dependencies {
  paths = ["../s3"]
}
