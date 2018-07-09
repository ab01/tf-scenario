output "database_name" {
  value = "${aws_db_instance.database.name}"
}
output "username" {
  value = "${aws_db_instance.database.username}"
}
output "password" {
  sensitive = true # Keep it a secret
  value = "${var.db_password}"
}
output "database_address" {
  value = "${aws_db_instance.database.address}"
}
output "database_endpoint" {
  value = "${aws_db_instance.database.endpoint}"
}
