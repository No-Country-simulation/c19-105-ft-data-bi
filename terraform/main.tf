terraform {
  required_providers {
    gdrive = {
      source = "hanneshayashi/gdrive"
      version = "~> 1.0"
    }
  }
}

# Use a Service Account Key from a JSON file
provider "gdrive" {
  service_account_key = file(var.credentials_drive) # The path to the GCP credentials file
  subject             = var.email # The email of the user to impersonate
}

resource "gdrive_file" "data_dir_drive" {
  mime_type = "application/vnd.google-apps.folder" 
  parent    = var.data_folder_dir_drive # The ID of the parent folder
  name      = "data" # The name of the folder
}

# Updload a CSV file and import it as a Google Sheet
resource "gdrive_file" "import_csv" {
  for_each        = fileset(var.data_folder_dir, "*.csv")
  name             = each.value
  mime_type        = "application/vnd.google-apps.spreadsheet"
  mime_type_source = "text/csv"
  content          = each.value
  parent           = gdrive_file.data_dir_drive.id
}
