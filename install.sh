echo "#1 Set hostname to ansible01"
sudo hostnamectl set-hostname anshible01

echo "#2 Update & Patch"
sudo apt update

echo "#3 install python3 & pip3"
sudo apt install python3 python3-pip -y

echo "#4 add ansible repo from ppa"
sudo apt-add-repository ppa:ansible/ansible

echo "#5 Install ansible"
sudo apt install ansible -y

echo "change owner & group of ansible home directory to ansible user"
sudo chown -R ansible:ansible /etc/ansible

