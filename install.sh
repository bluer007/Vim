#!/bin/bash

ls /usr/share/vim/vim74/colors/ 1>/dev/null 2>/dev/null && sudo cp ./monokai.vim /usr/share/vim/vim74/colors/
ls /usr/share/vim/vim80/colors/ 1>/dev/null 2>/dev/null && sudo cp ./monokai.vim /usr/share/vim/vim80/colors/
ls /usr/share/vim/vim74/colors/ 1>/dev/null 2>/dev/null && sudo cp ./Tomorrow-Night-Eighties.vim /usr/share/vim/vim74/colors/
ls /usr/share/vim/vim80/colors/ 1>/dev/null 2>/dev/null && sudo cp ./Tomorrow-Night-Eighties.vim /usr/share/vim/vim80/colors/

#备份配置文件
sudo cp /etc/vim/vimrc /etc/vim/vimrc.bak
sudo cp ~/.ideavimrc ~/.ideavimrc.bak

#复制配置文件
sudo cp ./vimrc /etc/vim/vimrc
sudo cp ./ideavimrc ~/.ideavimrc

ls /usr/share/vim/vim74/colors/ 1>/dev/null 2>/dev/null && echo 'You have installed vim7.4!'
ls /usr/share/vim/vim80/colors/ 1>/dev/null 2>/dev/null && echo 'You have installed vim8.0!'
echo 'Vimrc and .ideavimrc install finished!'
echo 'Vimrc: /etc/vim/vimrc     backup: /etc/vim/vimrc.bak'
echo '.ideavimrc: ~/.ideavimrc     backup:  ~/.ideavimrc.bak'
