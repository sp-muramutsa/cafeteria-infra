resource "google_compute_network" "vpc" {
	name = "cafeteria-vpc"
	auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
	name = "cafeteria-subnet"
	region = var.region
	network = google_compute_network.vpc.name
	ip_cidr_range = "10.0.0.0/24"
}

