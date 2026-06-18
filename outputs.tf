output "web_external_ip" {
  description = "External IP of web server"
  value       = yandex_compute_instance.web.network_interface[0].nat_ip_address
}

output "web_internal_ip" {
  description = "Internal IP of web server"
  value       = yandex_compute_instance.web.network_interface[0].ip_address
}
