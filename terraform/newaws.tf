provider "aws" {
  access_key = "AKIAWIVK24VGZOSYSOPB"
  secret_key = "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"
  region     = "us-east-2"
}

resource "aws_instance" "target5" {
  ami           = "ami-05c1fa8df71875112"
  instance_type = "t2.micro"
  private_ip = "10.0.0.4"
  subnet_id = "subnet-0b3697e2893805b20"
  key_name = "testpair"
  vpc_security_group_ids = ["sg-0a312fc020306bbfe"]

}
