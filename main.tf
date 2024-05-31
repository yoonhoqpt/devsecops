provider "google" {
    credentials = file("C:/Users/TommyCho/gcp_project/valid-song-424717-f0-82e533ab438d.json")
    project = var.project_id
    region = var.region
}

resource "google_container_cluster" "primary" {
    name = "my-cluster"
    location = var.region
    initial_node_count = 2
}