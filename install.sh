#!/bin/bash

#复制主题文件
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
ls /etc/vim/vimrc 1>/dev/null 2>/dev/null \
    && sudo cp /etc/vim/vimrc /etc/vim/vimrc.bak
ls ~/.ideavimrc 1>/dev/null 2>/dev/null \
    && sudo cp ~/.ideavimrc ~/.ideavimrc.bak
ls ~/.config/nvim/init.vim 1>/dev/null 2>/dev/null \
    && sudo cp ~/.config/nvim/init.vim ~/.config/nvim/init.vim.bak 

#复制配置文件
ls /etc/vim/vimrc 1>/dev/null 2>/dev/null \
    && sudo cp ./vimrc /etc/vim/vimrc \
    && echo 'Vim: copy /etc/vim/vimrc successfully!'
sudo cp ./ideavimrc ~/.ideavimrc \
    && echo 'Idea: copy ~/.ideavimrc successfully!'
ls ~/.config/nvim/init.vim 1>/dev/null 2>/dev/null \
    && sudo cp ./vimrc ~/.config/nvim/init.vim \
    && echo 'NeoVim: copy ~/.config/nvim/init.vim successfully!'
    
