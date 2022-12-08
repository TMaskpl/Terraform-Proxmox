# clone cloud image to new VM
qm clone 9000 999 --name test-clone-cloud-init
qm set 999 --sshkey id_rsa_cloudinit.pub 
qm set 999 --ipconfig0 ip=10.20.222.88/24,gw=10.20.222.1
qm start 999
  
# remove known host because SSH key changed
ssh-keygen -f "/root/.ssh/known_hosts" -R "10.20.222.88"
# ssh in
sleep 60 
ssh -o StrictHostKeyChecking=no -i id_rsa_cloudinit ubuntu@10.20.222.88
# stop and destroy VM
# qm stop 999 && qm destroy 999
