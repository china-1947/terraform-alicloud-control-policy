variable "control_policy_name" {
  default = "control_policy_name"
}

data "alicloud_resource_manager_folders" "example" {}

module "example" {
  source                      = "../"
  control_policy_name         = var.control_policy_name
  resource_manager_folder_ids = data.alicloud_resource_manager_folders.example.folders
}
