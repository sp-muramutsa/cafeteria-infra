resource "google_container_cluster" "primary" {
	name = "cafeteria-cluster"
	location = var.zone

	# Disable default node pool nad create a custom cheaper one
	remove_default_node_pool = true
	initial_node_count = 1

	network = google_compute_network.vpc.name
	subnetwork = google_compute_subnetwork.subnet.name
}

# Worker nodes
resource "google_container_node_pool" "primary_nodes" {
	name = "cafeteria-node-pool"
	location = var.zone
	cluster = google_container_cluster.primary.name
	node_count = 1

	node_config {
	preemptible = true # Cheapest option
	machine_type = "e2-standard-2" # 2 vCPU, 8 GB RAM 
	
	# Permissions for the nodes
	oauth_scopes = [
		"https://www.googleapis.com/auth/cloud-platform"
	]

	tags = ["cafeteria-node"]
	}
}
	
