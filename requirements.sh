sudo yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y
sudo yum check-update
sudo yum update -y
sudo yum install cmake dconf docker htop jre nmap nodejs npm python3-setuptools tmux -y
sudo pip3 install --user colorama requests aiohttp
sudo yum check-update
sudo yum update -y
sudo echo 'export TERM=xterm-256color' >> $HOME/.bash_profile
