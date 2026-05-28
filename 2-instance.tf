resource "google_compute_instance" "sprint-vm01" {
  name         = "sprint-vm01"
  machine_type = "n4-standard-2"
  zone         = "us-central1-b"

  tags = ["sprint-web"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
      size  = 100
    }
  }

  network_interface {
    network    = google_compute_network.sprint.name
    subnetwork = google_compute_subnetwork.sprint.name

    access_config {}
  }

  metadata_startup_script = file("./startup.sh")
}