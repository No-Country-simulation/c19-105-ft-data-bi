variable "credentials_drive" {
  description = "The path to the GCP credentials file for the Google Drive API"
  default     = "path/to/credentials.json"
}

variable "email" {
  description = "The email of the user to impersonate"
  default     = "example@gmail.com"
}

# This will create the folder in the root of the Google Drive
variable "data_folder_dir" {
  description = "The path where the data is located"
  default     = "path/to/data"
}

# This will create the folder in the root of the Google Drive
variable "data_folder_dir_drive" {
  description = "The path where the folder will be created"
  default     = "root"
}