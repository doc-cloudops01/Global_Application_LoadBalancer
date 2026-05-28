resource "google_compute_network" "xxxxxxxxx" {
  project                 = "xxxxxxxxxx"
  name                    = "xxxxxxxxxx"
  auto_create_subnetworks = true
  mtu                     = 1460
}

resource "google_compute_subnetwork" "xxxxxxxxxx" {
  name                     = "xxxxxxxxxx"
  ip_cidr_range            = "10.40.0.0/16"
  region                   = "us-central1"
  network                  = google_compute_network.danger_zone.id
  private_ip_google_access = false
}

