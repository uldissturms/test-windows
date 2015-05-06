vagrant plugin install vagrant-winrm # install winrm plugin for vagrant

mkdir /usr/local/packer # install packer
wget bit.ly/packer075
unzip packer075 /usr/local/packer
PATH=$PATH:/usr/local/packer

git clone https://github.com/boxcutter/windows.git # clone windows packer scripts
cd windows
make virtualbox/eval-win2012r2-standard # build virtualbox windows image


