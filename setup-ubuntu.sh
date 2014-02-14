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
guake
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

#vim conf
if [ -f .vimrc] || [ -h .vimrc]
then
  mv .vimrc .vimrc.bak
fi
wget https://raw.github.com/mac0ne/myconf/master/.vimrc

#install chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt-get install "-y" libxss1
dpkg -i google-chrome-stable_current_amd64.deb
