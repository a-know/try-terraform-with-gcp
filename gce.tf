# Configure the Google Cloud provider
provider "google" {
    account_file = "./credentials/account.json"
    project = "try-terraform"
    region = "asia-east1-a"
}

# Configure the Google Compute Engine Instance
resource "google_compute_instance" "default" {
    name = "test"
    machine_type = "f1-micro"
    zone = "asia-east1-a"
    tags = ["try-terraform"]

    disk {
        image = "debian-7-wheezy-v20140814"
    }

    network_interface {
        network = "default"
    }
}