#This is the begginging of the sprint.
terraform {
  required_version = ">= 1.10"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = "whannah-gcp-75"
  zone    = "us-central1-b"
}
