variable "location" {
  description = "Project Location"
  default     = "EU"

}


variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  default     = "demo_dataset"
}

variable "gcs_bucket_name" {
  description = "My GCS Bucket Name"
  default     = "project-62475ad3-ad9c-4e56-8b9"
}

variable "gcs_storage_class" {
  description = "Bucket_Storage_Class"
  default     = "STANDARD"
}