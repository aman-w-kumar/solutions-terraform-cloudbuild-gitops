resource "google_compute_subnetwork" "ez-net-prv-pr-dev-128" {
  name          = "ez-net-prv-pr-dev-128"
  ip_cidr_range = "10.2.0.0/16"
  region        = "us-central1"
  network       = google_compute_network.custom-test.id
  secondary_ip_range {
    range_name    = "tf-test-secondary-range-update1"
    ip_cidr_range = "192.168.10.0/24"
  }
}

resource "google_compute_network" "custom-test" {
  name                    = "ez-vpc-pr-dev-eu-w3"
  auto_create_subnetworks = false
}
