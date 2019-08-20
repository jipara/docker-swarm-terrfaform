### output.tf
output "master_public_ip" {
  value = ["${aws_instance.master.public_ip}"]
}
output "worker1_public_ip" {
  value = ["${aws_instance.worker1.public_ip}"]
}
output "worker2_public_ip" {
  value = ["${aws_instance.worker2.public_ip}"]
}
output "worker3_public_ip" {
  value = ["${aws_instance.worker3.public_ip}"]
}
