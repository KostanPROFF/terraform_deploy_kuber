output "kube_config" {
  value = azurerm_kubernetes_cluster.aks.kube_config_raw

  sensitive = true
}

output "resource_group_name" {
  value = azurerm_resource_group.aks-rg.name
}
output "wordpress_url" {
  value = "https://${azurerm_dns_cname_record.aks-dns-zone.name}"
}