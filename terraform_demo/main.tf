terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "8.3.0"
    }
  }
}


provider "google" {
  project = "project-62475ad3-ad9c-4e56-8b9"
  region  = "us-central1"
}


resource "google_storage_bucket" "demo-bucket" {
  name                        = "project-62475ad3-ad9c-4e56-8b9"
  location                    = "EU"
  force_destroy               = true
  uniform_bucket_level_access = true

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      days_since_noncurrent_time = 3
      send_age_if_zero           = false
    }
  }
}

resource "google_bigquery_dataset" "demo_dataset" {
  dataset_id = "demo_dataset"
}