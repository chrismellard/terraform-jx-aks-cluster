locals {
  dns_prefix                       = var.dns_prefix != "" ? var.dns_prefix : replace(var.cluster_name, "-", "")
  network_resource_group_name      = var.network_resource_group_name != "" ? var.network_resource_group_name : "rg-net-${var.cluster_name}"
  cluster_resource_group_name      = var.cluster_resource_group_name != "" ? var.cluster_resource_group_name : "rg-cluster-${var.cluster_name}"
  cluster_node_resource_group_name = var.cluster_node_resource_group_name != "" ? var.cluster_node_resource_group_name : "rg-cluster-node-${var.cluster_name}"
  network_name                     = var.network_name != "" ? var.network_name : var.cluster_name
  subnet_name                      = var.subnet_name != "" ? var.subnet_name : var.cluster_name
}
