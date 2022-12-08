# clone cloud image to new VM
qm clone 9000 999 --name test-clone-cloud-init
qm set 999 --sshkey id_rsa_cloudinit.pub 
qm set 999 --ipconfig0 ip=10.10.10.10/24,gw=10.10.10.1
qm start 999
  
ssh-keygen -f "/root/.ssh/known_hosts" -R "10.10.10.10"

sleep 60 
ssh -o StrictHostKeyChecking=no -i id_rsa_cloudinit ubuntu@10.10.10.10
# stop and destroy VM
# qm stop 999 && qm destroy 999
