output "public_ip" {
    value = "${module.compute.public_ip_address}"
}

output "dns_name" {
  value = "${module.compute.public_ip_dns_name}"
}

output "user_name" {
  value = "${var.user_name}"
}

