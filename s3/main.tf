resource "awscc_s3_bucket" "testS3" {
  bucket_name = "test08-bucket"
  versioning_configuration = {
    status = "Enabled"
  }
  tags = [{
    key   = "Name"
    value = "My bucket"
  }]

} # s3 bucket creation with versioning
