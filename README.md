# Terraform-Proxmox

## VM, Template, SSH

ssh-keygen -t rsa -b 4096 # id_rsa_cloudinit

### Tworzenie template Cloud-init Ubuntu 22.10

./create_template.sh

### Tworzenie maszyny vm z hasłem i kluczem ssh

./create_vm.sh

## Terraform

### Dodanie usera terraform do klastra Proxmox

[How to deploy VMs in Proxmox with Terraform](https://austinsnerdythings.com/2021/09/01/how-to-deploy-vms-in-proxmox-with-terraform/)


### Konfiguracja terraform

- Proxmox


### Run

terraform init

terraform plan

terraform apply


### Links

[VM](https://registry.terraform.io/providers/Telmate/proxmox/latest/docs/resources/vm_qemu)

[LXC](https://registry.terraform.io/providers/Telmate/proxmox/latest/docs/resources/lxc)

