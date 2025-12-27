resource "google_artifact_registry_repository" "my_repo" {
	location = var.region
	repository_id = "cafeteria-repo"
	description = "Docker repository for Caferia App"
	format = "DOCKER"
}
