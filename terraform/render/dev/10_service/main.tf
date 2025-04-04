resource "render_web_service" "front" {
    name = "front"
    plan = "free"
    region = "frankfurt"
    runtime_source = {
        image = {
            image_url = var.front_registry_url
            registry_credential_id = var.registry_credential_id
            tag = "latest"
        }
    }
}

resource "render_web_service" "back" {
    name = "back"
    plan = "free"
    region = "frankfurt"
    runtime_source = {
        image = {
            image_url = var.back_registry_url
            registry_credential_id = var.registry_credential_id
            tag = "latest"
        }
    }
}
