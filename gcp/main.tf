provider "google" {
  project = var.gcp_project
}

provider "google-beta" {
  project = var.gcp_project
}

module "ansible-server-01" {
  source = "./modules/01"

  gcp_project  = var.gcp_project

  gce-ansible-server-01 = var.gce-ansible-server-01
}

module "ansible-node-01" {
  source = "./modules/02"

  gcp_project  = var.gcp_project

  gce-ansible-node-01 = var.gce-ansible-node-01
}

module "ansible-node-02" {
  source = "./modules/03"

  gcp_project  = var.gcp_project

  gce-ansible-node-02 = var.gce-ansible-node-02
}