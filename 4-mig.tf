
# resource "google_compute_region_instance_group_manager" "xxx-mig" {
#   name               = "xxx-mig"
#   target_size        = 2
#   base_instance_name = "xxxxxxx-template"
#   region             = "us-central1"
#   #region = "" (optional if provider default is set)


#   # Instance Template
#   version {
#     instance_template = google_compute_instance_template.xxxxxxx-template.id
#   }

#   # Named Port
#   named_port {
#     name = "webserver"
#     port = 80
#   }

#   # Autohealing Config
#   auto_healing_policies {
#     health_check      = google_compute_health_check.xxxxxxx-health-check.id
#     initial_delay_sec = 300
#   }
# }
