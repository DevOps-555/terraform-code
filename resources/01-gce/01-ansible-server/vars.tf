## --- DEFAULT PARAMETERS ------------------------------------------------------------------------------------------------

variable "gcp_project" {}

## --- INSTANCE 01 PARAMETERS ---------------------------------------------------------------------------------------------

variable "gce-ansible-server" {
    type = object({
            gce_instance_name   = string
            gce_hostname        = string
            gce_region          = string
            gce_zones           = string
            gce_tags            = list(string)
            gce_machine_type    = string
            gce_boot_disk_size  = number
            gce_boot_disk_image = string
            gce_vpc_nw          = string
            gce_snw             = string
    })
}