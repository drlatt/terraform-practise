# instance properties

resource "aws_instance" "test1" {
  ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"
  subnet_id     = "${var.AWS_SUBNET_ID}"

  # use the local-exec provisioner to run commands locally
  provisioner "local-exec" {
    command = "echo ${aws_instance.test1.public_ip} > ip_address.txt"
  }
}

resource "aws_eip" "ip" {
  instance = "${aws_instance.test1.id}"
}
