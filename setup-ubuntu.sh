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
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh


#install chrome
curl https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb| dpkg -i
