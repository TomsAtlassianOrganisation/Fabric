resource "google_compute_firewall" "allowed" {
  name    = "test-firewall"
  network = google_compute_network.default.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["192.168.0.0/24"]
}
