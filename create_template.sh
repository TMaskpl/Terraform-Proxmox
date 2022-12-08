# installing libguestfs-tools only required once, prior to first run
sudo apt update -y
sudo apt install libguestfs-tools -y
# remove existing image in case last execution did not complete successfully
rm kinetic-server-cloudimg-amd64.img 
wget https://cloud-images.ubuntu.com/kinetic/current/kinetic-server-cloudimg-amd64.img
virt-customize -a kinetic-server-cloudimg-amd64.img --root-password password:newpassword1 --firstboot-install qemu-guest-agent
qm create 9000 --name "ubuntu-2210-cloudinit-template" --memory 2048 --cores 2 --net0 virtio,bridge=vmbr20
qm importdisk 9000 kinetic-server-cloudimg-amd64.img local-lvm
qm set 9000 --scsihw virtio-scsi-pci --scsi0 local-lvm:vm-9000-disk-0
qm set 9000 --boot c --bootdisk scsi0
qm set 9000 --ide2 local-lvm:cloudinit
qm set 9000 --serial0 socket --vga serial0
qm set 9000 --agent enabled=1
qm resize 9000 vm-9000-disk-0 +15G
qm template 9000
rm kinetic-server-cloudimg-amd64.img
echo "next up, clone VM, then expand the disk"
echo "you also still need to copy ssh keys to the newly cloned VM"
