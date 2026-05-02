resource "azurerm_resource_group" "rg_myterraform" {
  name     = "rg-myterraform"
  location = var.location
}

resource "azurerm_storage_account" "myterrastg001" {
  name                     = "myterrastg001"
  resource_group_name      = azurerm_resource_group.rg_myterraform.name
  location                 = azurerm_resource_group.rg_myterraform.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}