# #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_autoscaler.html


# resource "google_compute_region_autoscaler" "xxxxx-region-autoscaler" {
#   name   = "xxxxx-region-autoscaler"
#   region = "us-central1"
#   target = google_compute_region_instance_group_manager.xxxxx-mig.id

#   autoscaling_policy {
#     max_replicas    = 5
#     min_replicas    = 1
#     cooldown_period = 60


#     cpu_utilization {
#       target = 0.5
#     }
#   }
# }
