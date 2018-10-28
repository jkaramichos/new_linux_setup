#!/usr/bin/evn bash


sudo apt install git
sudo apt install vim
git clone https://github.com/jkaramichos/my-vimrc


cd my-vimrc
chmod +x install.sh
./install.sh

echo function cd { >> ~/.bashrc
echo	builtin cd "$@" && ls -F >> ~/.bashrc
echo } >> ~/.bashrc

echo bind '"\e[A": history-search-backward' >> ~/.bashrc
echo bind '"\e[B": history-search-forward' >> ~/.bashrc

echo export PATH=$PATH:/snap/bin >> ~/.bashrc
echo export PROMPT_COMMAND="echo -n \[\$(date +%F-%T)\]\ " >> ~/.bashrc
