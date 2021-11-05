output "ip" {
  value = aws_eip.ip.public_ip
  sensitive = true
}


output "outputNullStr" {
  value = var.some_value2
  sensitive = false
}

output "outputEmptyStr" {
  value = var.some_value
  sensitive = false
}

output "outputRegion" {
  value = var.region
  sensitive = false
}

output "outputNull" {
  value = var.some_null
  sensitive = false
}

output "outputEmpty" {
  value = var.empty
  sensitive = false
}
