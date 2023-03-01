provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "myfirstec2" {
        ami = "ami-0b5bff6d9495eff69"
        instance_type = "t2.micro"
        tags {
            Name = "mytfec2machine"
        }
}

output "public_ip" {
        value = aws_instance.myfirstec2.public_ip
}
