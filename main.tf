provider "google" {
  project = "valid-song-424717-f0"
  region  = "us-central1"
}

resource "google_container_cluster" "primary" {
  name     = "my-cluster"
  location = "us-central1-a"
  initial_node_count = 2
}

output "kubernetes_cluster_name" {
  value = google_container_cluster.primary.name
}