clear
sudo echo 'export TERM=xterm-256color' >> $HOME/.bash_profile
sudo yum groupinstall "Development Tools" -y
sudo yum install 'dnf-command(config-manager)' -y
clear
sudo yum check-update
sudo yum update -y
clear
sudo yum install epel-release -y
sudo dnf config-manager --set-enabled ol8_codeready_builder
sudo yum config-manager --set-enabled ol8_addons
clear
sudo yum check-update
sudo yum update -y
clear
sudo yum install wget curl cmake dconf docker htop jre nmap nodejs npm python3-setuptools python3-devel tmux openssl-devel libffi-devel bzip2-devel -y
sudo yum install screen -y
clear
sudo yum check-update
sudo yum update -y

# upgrade python3.x to 3.9
clear
sudo yum install openssl-devel libffi-devel bzip2-devel -y
wget https://www.python.org/ftp/python/3.9.10/Python-3.9.10.tgz
tar xvf Python-3.9.10.tgz
cd Python-3.9*/
./configure --enable-optimizations
sudo make altinstall
clear
python3.9 --version
pip3.9 --version
/usr/local/bin/python3.9 -m pip install --upgrade pip

# pip requirements
clear
sudo pip3 install --user wheel colorama requests aiohttp proxy urllib3 uvloop cchardet
