

# resource "google_compute_firewall" "allow_http" {
#   name    = "xxxxx-allow-http"
#   network = google_compute_network.xxxxxxxx.name

#   allow {
#     protocol = "tcp"
#     ports    = ["80"]
#   }

#   source_ranges = ["0.0.0.0/0"]
#   target_tags   = ["xxxxx-web"]
# }


# resource "google_compute_firewall" "allow_ssh" {
#   name    = "xxxxx-allow-ssh"
#   network = google_compute_network.xxxxxxxx.name

#   allow {
#     protocol = "tcp"
#     ports    = ["22"]
#   }

#   source_ranges = ["0.0.0.0/0"]
#   target_tags   = ["xxxxx-web"]
# }