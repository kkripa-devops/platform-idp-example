provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "idp-demo-rg"
  location = "East US"
}

resource "azurerm_app_service_plan" "plan" {
  name                = "idp-demo-plan"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku {
    tier = "Basic"
    size = "B1"
  }
}

resource "azurerm_app_service" "app" {
  name                = "idp-demo-app"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.plan.id

  site_config {
    linux_fx_version = "DOCKER|<youracr>.azurecr.io/internal-dev-platform/sample-app:latest"
  }

  app_settings = {
    WEBSITES_PORT = "80"
  }
}
