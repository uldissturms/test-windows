vagrant plugin install vagrant-winrm # install winrm plugin for vagrant

mkdir /usr/local/packer # install packer
wget bit.ly/packer075
unzip packer075 /usr/local/packer
PATH=$PATH:/usr/local/packer

git clone https://github.com/boxcutter/windows.git # clone windows packer scripts
cd windows
make virtualbox/eval-win2012r2-standard # build virtualbox windows image
vagrant box add windows-2012r2 ./box/virtualbox/eval-win2012r2-standard-nocm-1.0.4.box # register box with vagrant


