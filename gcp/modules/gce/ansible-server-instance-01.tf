resource "google_compute_instance" "ansible-server-01" {
  project      = var.gcp_project
  name         = var.gce-ansible-server-01.gce_instance_name
  hostname     = var.gce-ansible-server-01.gce_hostname
  machine_type = var.gce-ansible-server-01.gce_machine_type
  zone         = var.gce-ansible-server-01.gce_zones
  tags         = ["ansible-server"]
  boot_disk {
    initialize_params {
      image = var.gce-ansible-server-01.gce_boot_disk_image
      size  = var.gce-ansible-server-01.gce_boot_disk_size
      labels = {
        name = "ansible-server"
        sever = "remote-server"
      }
    }
  }

  network_interface {
    network = var.gce-ansible-server-01.gce_vpc_nw
    subnetwork = var.gce-ansible-server-01.gce_snw

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"
}