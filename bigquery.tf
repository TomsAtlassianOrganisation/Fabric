resource "google_bigquery_dataset" "allowed_3" {
  dataset_id                  = "example_dataset3"
  friendly_name               = "test"
  description                 = "This is a test description"
  location                    = "EU"
  default_table_expiration_ms = 3600000
  access {
    role          = "OWNER"
    special_group = "allUsers"
  }
}
# comment line
