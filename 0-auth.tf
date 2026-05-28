locals {
  //Replace the empty strong with your project
  bacchus_project = ""
  dolla_bill_project = "whannah-gcp-75"
  alex_project = ""
  jj_project = ""
  kevin_project = "theowaf-class7-5-kevinwillocks"
}

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
  project = local.kevin_project
  zone    = "us-central1-b"
}
