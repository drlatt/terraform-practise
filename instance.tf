# instance properties

resource "aws_instance" "test1" {
    ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
    instance_type = "t2.micro"
    subnet_id     = "${var.AWS_SUBNET_ID}"
}

resource "aws_eip" "ip" {
    instance = "${aws_instance.test1.id}"
}
