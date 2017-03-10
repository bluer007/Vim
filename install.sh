#!/bin/bash

sudo cp /etc/vim/vimrc /etc/vim/vimrc.bak
sudo cp ./vimrc /etc/vim/vimrc
ls /usr/share/vim/vim74/colors/ 1>/dev/null 2>/dev/null && sudo cp ./monokai.vim /usr/share/vim/vim74/colors/
ls /usr/share/vim/vim80/colors/ 1>/dev/null 2>/dev/null && sudo cp ./monokai.vim /usr/share/vim/vim80/colors/
ls /usr/share/vim/vim74/colors/ 1>/dev/null 2>/dev/null && sudo cp ./Tomorrow-Night-Eighties.vim /usr/share/vim/vim74/colors/
ls /usr/share/vim/vim80/colors/ 1>/dev/null 2>/dev/null && sudo cp ./Tomorrow-Night-Eighties.vim /usr/share/vim/vim80/colors/
sudo cp ~/.ideavimrc ~/.ideavimrc.bak
sudo cp ./vimrc ~/.ideavimrc

ls /usr/share/vim/vim74/colors/ 1>/dev/null 2>/dev/null && echo 'You have installed vim7.4!'
ls /usr/share/vim/vim80/colors/ 1>/dev/null 2>/dev/null && echo 'You have installed vim8.0!'
echo 'Vimrc and .ideavimrc install finished!'
echo 'Vimrc: /etc/vim/vimrc     backup: /etc/vim/vimrc.bak'
echo '.ideavimrc: ~/.ideavimrc     backup:  ~/.ideavimrc.bak'
