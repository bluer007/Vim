#!/bin/bash

#复制主题文件
mkdir ~/.vim/colors/ 1>/dev/null 2>/dev/null
cp -f ./monokai.vim ~/.vim/colors/ 
cp -f ./Tomorrow-Night-Eighties.vim ~/.vim/colors/

ls /usr/local/share/vim/vim80/colors/ 1>/dev/null 2>/dev/null \
    && sudo cp ./monokai.vim /usr/local/share/vim/vim80/colors/ \
    && sudo cp ./Tomorrow-Night-Eighties.vim /usr/local/share/vim/vim80/colors/

ls /usr/share/vim/vim74/colors/ 1>/dev/null 2>/dev/null \
    && sudo cp ./monokai.vim /usr/share/vim/vim74/colors/ \
    && sudo cp ./Tomorrow-Night-Eighties.vim /usr/share/vim/vim74/colors/

ls /usr/share/vim/vim80/colors/ 1>/dev/null 2>/dev/null \
    && sudo cp ./monokai.vim /usr/share/vim/vim80/colors/ \
    && sudo cp ./Tomorrow-Night-Eighties.vim /usr/share/vim/vim80/colors/ 

ls /usr/share/nvim/runtime/colors/ 1>/dev/null 2>/dev/null \
    && sudo cp ./monokai.vim /usr/share/nvim/runtime/colors/ \
    && sudo cp ./Tomorrow-Night-Eighties.vim /usr/share/nvim/runtime/colors/ 
 
#备份配置文件
ls ~/.vim/vimrc 1>/dev/null 2>/dev/null \
    && sudo cp ~/.vim/vimrc ~/.vim/vimrc.bak
ls /etc/vim/vimrc 1>/dev/null 2>/dev/null \
    && sudo cp /etc/vim/vimrc /etc/vim/vimrc.bak
ls ~/.ideavimrc 1>/dev/null 2>/dev/null \
    && sudo cp ~/.ideavimrc ~/.ideavimrc.bak
ls ~/.config/nvim/init.vim 1>/dev/null 2>/dev/null \
    && sudo cp ~/.config/nvim/init.vim ~/.config/nvim/init.vim.bak 

#复制配置文件
sudo cp ./vimrc ~/.vim/vimrc \
    && echo 'Vim: copy ~/.vim/vimrc!'

sudo cp ./vimrc ~/.vimrc \
    && echo 'Vim: copy ~/.vimrc!'

ls /etc/vim/vimrc 1>/dev/null 2>/dev/null \
    && sudo cp ./vimrc /etc/vim/vimrc \
    && echo 'Vim: copy /etc/vim/vimrc successfully!'

sudo cp ./ideavimrc ~/.ideavimrc \
    && echo 'Idea: copy ~/.ideavimrc successfully!'

ls ~/.config/nvim/init.vim 1>/dev/null 2>/dev/null \
    && sudo cp ./vimrc ~/.config/nvim/init.vim \
    && echo 'NeoVim: copy ~/.config/nvim/init.vim successfully!'
    
