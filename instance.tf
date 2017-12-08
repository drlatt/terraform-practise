# instance properties

resource "aws_instance" "test1" {
    ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
    instance_type = "t2.micro"
    subnet_id     = "subnet-2ce7d44b"
}

resource "aws_eip" "ip" {
    instance = "${aws_instance.test1.id}"
}
