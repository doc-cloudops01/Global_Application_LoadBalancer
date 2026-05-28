
resource "google_compute_instance_template" "xxxxxxx-template" {
  name         = "xxxxxxx-template"
  description  = "xxxxxxxxx"
  machine_type = "e2-medium"

  # Create a new disk from an image and set as boot disk
  disk {
    source_image = "debian-cloud/debian-12"
    boot         = true
    auto_delete  = true
  }

  # Network Configurations 
  network_interface {
    subnetwork = google_compute_subnetwork.xxxxxxx.id
    access_config {
      # Include this section to give the VM an external IP address
      # }
    }

  }

  tags   = ["xxxxx-web"]

  # Install Webserver using file() function
  metadata_startup_script = file("./startup.sh")

}