#Create a Storage account inside the resource group
resource "azurerm_storage_account" "mystorageaccount" {
  name = "storage${var.business}${var.environment}${random_string.myrandom.id}"
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  account_tier = "Standard"
  account_replication_type = "LRS"
  tags = local.common_tags
}