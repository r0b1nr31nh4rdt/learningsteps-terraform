resource "azurerm_resource_group" "main" {
  name     = "rg-${var.prefix}"
  location = var.location

  # Azure Policy adds a created-on tag after creation; ignore it so plan stays clean
  lifecycle {
    ignore_changes = [tags["created-on"]]
  }
}
