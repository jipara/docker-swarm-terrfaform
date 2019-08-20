### main.tf
# Specify the provider and access details
provider "aws" {
  region = "${var.aws_region}"
}
resource "aws_instance" "master" {
  ami                    = "${var.ami}"
  instance_type          = "${var.instance_type}"
  key_name               = "${var.key_name}"
  user_data              = "${file("${var.userdata}")}"
  vpc_security_group_ids = ["${aws_security_group.sgwarm-tool.id}"]



  tags = {
    Name = "master"
    Env  = "${var.env}"
  }
}
resource "aws_instance" "worker1" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name      = "${var.key_name}"
  user_data     = "${file("${var.userdata}")}"
  # user_data              = "${file("${var.worker_token}")}"
  vpc_security_group_ids = ["${aws_security_group.sgwarm-tool.id}"]
  tags = {
    Name = "worker 1"
    Env  = "${var.env}"
  }
}
resource "aws_instance" "worker2" {
  ami                    = "${var.ami}"
  instance_type          = "${var.instance_type}"
  key_name               = "${var.key_name}"
  user_data              = "${file("${var.userdata}")}"
  vpc_security_group_ids = ["${aws_security_group.sgwarm-tool.id}"]
  tags = {
    Name = "worker 2"
    Env  = "${var.env}"
  }
}
resource "aws_instance" "worker3" {
  ami                    = "${var.ami}"
  instance_type          = "${var.instance_type}"
  key_name               = "${var.key_name}"
  user_data              = "${file("${var.userdata}")}"
  vpc_security_group_ids = ["${aws_security_group.sgwarm-tool.id}"]
  tags = {
    Name = "worker 3"
    Env  = "${var.env}"
  }
}
