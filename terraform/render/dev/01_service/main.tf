resource "render_web_service" "front" {
    name = "front"
    plan = "starter"
    region = "frankfurt"
    runtime_source = {
        image = {
            image_url = var.front_registry_url
            registry_credential_id = var.github_credentials
            tag = "latest"
        }
    }
}

resource "render_web_service" "back" {
    name = "back"
    plan = "starter"
    region = "frankfurt"
    runtime_source = {
        image = {
            image_url = var.back_registry_url
            registry_credential_id = var.github_credentials
            tag = "latest"
        }
    }
}
