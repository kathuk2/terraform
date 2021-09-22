resource "azurerm_resource_group" "example" {
  name     = "database-rg"
  location = "West Europe"
}
resource "azurerm_mssql_server" "exampleSQLServer" {
  name                         = "kt900"
  resource_group_name          = var.resourcegroupName
  location                     = var.location
  version                      = "12.0"
  administrator_login          = "missadministrator"
  administrator_login_password = "thisIsKat11"
  minimum_tls_version          = "1.2"

  azuread_administrator {
    login_username = "AzureAD Admin"
    object_id      = "00000000-0000-0000-0000-000000000000"
  }

  tags = {
    environment = "production"
  }
}