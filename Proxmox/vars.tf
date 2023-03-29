variable "IP_PVE" {}
variable "ID" {}
variable "TOKEN" {}

variable "ssh_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC9QycdajsC6GvqQvdBQFIEzv/hZA3jMnlribHHlusDURzAKw7IwNljMoi/9Mk+7EizHOx5nApT7wiCRPaUEdb7QR8TCI0p0ENoip8F+QC8mZ856QvJo9QWe/OUsSD8vM1/962vqNBdibwGJUfiHFVYyEBwF+oaAd89f0S/T2D02TR30/9WeV4jXGeQz04ApGyxZPRnDSKa0fd60uHnWwK/sNfoXieg2LLZAQfVa0eGMEw5fZjf3BDMpU1Mlf+656VkMhlfdQ4kltzQwItc6KyhzogPbUbpuTg93InYC9ENr+mxlQhyB7hpRWRiWyq60GqxKU5HaP2J60Dk+jTpVDCWcYJpY9XuVgQozBrayp2vhid2S0HrlCsqU7GSZ64kg3/hDAb2kg4aURYEH2DfAAMcSsim8CBBk7R8XFW0cj05GwKa8rWJMjdCRbp1d2XtDPjBqJaHujg6bChSlb/8CfxG++P1Rlr7v9nyGXGwnxL17pEcA28MnvGjm7wf5C30Qhi0KaTVIG9JJUnsNX7Zf4oUuvY6aAEuz6wi/YfeLOtlg9xMafZWyBdqeW4TjUGZykExxef9yLIZWKzJ3wlfUVFqca1t1xy4BU/sfBGHqVwwMHqYs3g0Cr2ctiukYegfXHo51srkSK7FXZfhpJ4KaAzkNjg5iskhr3O6BtzklGO+uQ== dniemczok@TMaskPL"
}

variable "proxmox_host" {
    default = "prod-pve"
}

variable "template_name" {
    default = "ubuntu-2210-cloudinit-template"
}
