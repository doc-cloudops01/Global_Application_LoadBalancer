
resource "google_compute_network" "sprint" {
  project                 = "theowafclass75bacchusfleary"
  name                    = "sprint"
  auto_create_subnetworks = false
  mtu                     = 1460
}

resource "google_compute_subnetwork" "sprint" {
  name          = "sprint"
  ip_cidr_range = "10.10.0.0/24"
  network       = google_compute_network.sprint.id
  region        = "us-central1"
}

resource "google_compute_firewall" "sprint" {
  name    = "sprint"
  network = google_compute_network.sprint.id

  allow {
    protocol = "tcp"
    ports    = ["80", "443", "22"]
  }

  source_ranges = ["10.10.0.0/24"]

  target_tags = ["sprint"]
}