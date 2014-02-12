#necessary pkgs
cat <<PACKAGES | xargs apt-get install "-y"
vim
zsh
git
curl
python-pip
python-gevent
python-flask
make
htop
iftop
gcc
tree
openssh-server
PACKAGES

#setup oh-my-zsh and import personal conf
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cd ~
if [ -f .zshrc ] || [ -h ~/.zshrc ]
then
  mv ~/.zshrc ~/.zshrc.bak
fi
wget https://raw.github.com/mac0ne/myconf/master/.zshrc

chsh -s `which zsh`


#install chrome
curl https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb| dpkg -i
