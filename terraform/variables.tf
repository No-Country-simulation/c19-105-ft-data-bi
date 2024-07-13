variable "credentials_drive" {
  description = "The path to the GCP credentials file for the Google Drive API"
  default     = "path/to/credentials.json"
}

# This will create the folder in the root of the Google Drive
variable "data_folder_dir" {
  description = "The path where the data is located"
  default     = "../data"
}

# This will create the folder in the root of the Google Drive
variable "data_folder_dir_drive" {
  description = "The path where the folder will be created"
  default     = "root"
}