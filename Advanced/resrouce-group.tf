#Resource 1: Azure Resource Group based on input variables
resource "azurerm_resource_group" "rg" {
  name = "rg-${var.business}-${var.environment}"
  location = var.resource_group_location
  tags = local.common_tags
}