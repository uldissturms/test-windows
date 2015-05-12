vagrant plugin install vagrant-winrm # install winrm plugin for vagrant

mkdir /usr/local/packer # install packer
wget bit.ly/packer075
unzip packer075 /usr/local/packer
PATH=$PATH:/usr/local/packer

git clone https://github.com/boxcutter/windows.git # clone windows packer scripts
cd windows
make virtualbox/eval-win2012r2-standard # build virtualbox windows image
vagrant box add windows-2012r2 ./box/virtualbox/eval-win2012r2-standard-nocm-1.0.4.box # register box with vagrant

aws ec2 create-security-group --group-name "winrm group" --description "winrm group with enabled required incoming ports" # add ec2 winrm
aws ec2 authorize-security-group-ingress --group-name "winrm group" --protocol tcp --port 80 --cidr "0.0.0.0/0" # enable http
aws ec2 authorize-security-group-ingress --group-name "winrm group" --protocol tcp --port 3389 --cidr "0.0.0.0/0" # enable remote desktop
aws ec2 authorize-security-group-ingress --group-name "winrm group" --protocol tcp --port 5985 --cidr "0.0.0.0/0" # enable winrm access to server


