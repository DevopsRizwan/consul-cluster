provider "aws" {
  region = "${var.region}"
}


  resource "aws_key_pair" "terraform-keys" {
    key_name = "${var.private_key}"
    public_key = "${file("./${var.public_key}")}"
}


resource "aws_instance" "ha" {
    instance_type = "t2.micro"
    count = length("${var.availability_zone}")
    availability_zone = "${var.availability_zone[count.index]}"
    ami = "${var.region_ami["${var.region}"]}"
    key_name = "master.pem"
    tags = {
      Name = "${var.availability_zone[count.index]}Server"
    }

# Provision the vms with unzip and python for ansible installed
provisioner "file" {
source="./${var.provision_file}"
destination="/tmp/${var.provision_file}"
}

# Execute the script file on each node after system boot
provisioner "remote-exec" {
inline=[
"chmod +x /tmp/${var.provision_file}",
"sudo /tmp/${var.provision_file}"
]
}

connection {
type="ssh"
user="${var.user}"
host=self.public_ip
private_key="${file("./${var.private_key}")}"
}

}
