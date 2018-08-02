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
ls ~/.vimrc 1>/dev/null 2>/dev/null \
    && sudo cp ~/.vimrc ~/.vimrc.bak
ls /etc/vim/vimrc 1>/dev/null 2>/dev/null \
    && sudo cp /etc/vim/vimrc /etc/vim/vimrc.bak
ls ~/.ideavimrc 1>/dev/null 2>/dev/null \
    && sudo cp ~/.ideavimrc ~/.ideavimrc.bak
ls ~/.config/nvim/init.vim 1>/dev/null 2>/dev/null \
    && sudo cp ~/.config/nvim/init.vim ~/.config/nvim/init.vim.bak 

#复制配置文件
ls ~/.vim/vimrc 1>/dev/null 2>/dev/null \
    && sudo cp ./vimrc ~/.vim/vimrc \
    && echo 'Vim: copy ~/.vim/vimrc!'

ls /etc/vim/vimrc 1>/dev/null 2>/dev/null \
    && sudo cp ./vimrc /etc/vim/vimrc \
    && echo 'Vim: copy /etc/vim/vimrc successfully!'

ls ~/.config/nvim/init.vim 1>/dev/null 2>/dev/null \
    && sudo cp ./vimrc ~/.config/nvim/init.vim \
    && echo 'NeoVim: copy ~/.config/nvim/init.vim successfully!'

#保证至少有一个生效的配置文件
sudo cp ./vimrc ~/.vimrc \
    && echo 'Vim: copy ~/.vimrc!'

# 因为一般都是没有该文件的, 则直接放置
sudo cp ./ideavimrc ~/.ideavimrc \
    && echo 'Idea: copy ~/.ideavimrc successfully!'

#安装vim-plug插件管理器, 详情看https://github.com/junegunn/vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \
    && echo 'Vim-plug: install successfully!'

echo '安装配置文件成功, 请运行vim后手工运行 <esc>:PlugInstall 命令'

