include "root" {
  path = find_in_parent_folders()
}

inputs = {
  bucket_name = "dev-bucket"
  test = "value"
}
