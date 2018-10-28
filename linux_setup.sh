#!/usr/bin/env bash


sudo apt install git
sudo apt install vim
git clone https://github.com/jkaramichos/my-vimrc


cd my-vimrc
chmod +x install.sh
./install.sh

printf "function cd {" >> ~/.bashrc
printf "\n	builtin cd "$@" && ls -F" >> ~/.bashrc
printf "\n }" >> ~/.bashrc

printf '\nbind ' >> ~/.bashrc && printf "'" >> ~/.bashrc && echo -n "\e[A" >> ~/.bashrc && printf ": history-search-backward'" >> ~/.bashrc
printf '\nbind ' >> ~/.bashrc && printf "'" >> ~/.bashrc && echo -n "\e[B" >> ~/.bashrc && printf ": history-search-forward'" >> ~/.bashrc

printf '\nexport PATH=$PATH:/snap/bin' >> ~/.bashrc
printf "\nexport PROMPT_COMMAND" >> ~/.bashrc
echo '="echo -n \[\$(date +%F-%T)\]\ "' >> ~/.bashrc

source ~/.bashrc
