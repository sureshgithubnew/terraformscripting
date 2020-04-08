
variable "name" {
    default = "Helloo"

}

varaible "number" {
    default = 3
}
output "name" {
  value = "${var.name}"
}
