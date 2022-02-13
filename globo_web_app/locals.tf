locals {
    common_tags = {
        company = var.company
        project = "${var.company}-${var.project}"
        billing_code = var.billing_code
    }
}

# The following will generate a random "rand"integer between 10000 and 99999:
resource "random_integer" "rand" {
  min = 10000
  max = 99999
}
