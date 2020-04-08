
variable "name" {
    default = "Helloo"

}

variable "number" {
    default = 3
}
output "name" {
  value = "${var.name}"
}
