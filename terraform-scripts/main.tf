# Create a new Resource Group
resource "azurerm_resource_group" "group" {
  name     = var.rg-name
  location = var.rg-location
}

# Create an App Service Plan with Linux
resource "azurerm_app_service_plan" "appserviceplan" {
  name                = "${azurerm_resource_group.group.name}-plan"
  location            = "${azurerm_resource_group.group.location}"
  resource_group_name = "${azurerm_resource_group.group.name}"

  # Define Linux as Host OS
  kind = "Linux"
  reserved = true

  # Choose size
  sku {
    tier = "Free"
    size = "F1"
  }
}

# Create an Azure Web App for Containers in that App Service Plan
resource "azurerm_app_service" "django-portfolio-dockerapp" {
  name                = "${azurerm_resource_group.group.name}-dockerapp"
  location            = "${azurerm_resource_group.group.location}"
  resource_group_name = "${azurerm_resource_group.group.name}"
  app_service_plan_id = "${azurerm_app_service_plan.appserviceplan.id}"

app_settings = {
    WEBSITES_ENABLE_APP_SERVICE_STORAGE = false
    DOCKER_REGISTRY_SERVER_URL = var.DOCKER_REGISTRY_SERVER_URL
    DOCKER_REGISTRY_SERVER_USERNAME = var.DOCKER_REGISTRY_SERVER_USERNAME
    DOCKER_REGISTRY_SERVER_PASSWORD = var.DOCKER_REGISTRY_SERVER_PASSWORD
  }

site_config {
    linux_fx_version = var.DOCKER_IMAGE
    always_on        = "false"
    use_32_bit_worker_process = true
  }

identity {
    type = "SystemAssigned"
  }
}
