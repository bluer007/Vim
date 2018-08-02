#!/bin/bash

#删除主题文件
rm -f ~/.vim/colors/monokai.vim 
rm -f ~/.vim/colors/Tomorrow-Night-Eighties.vim

rm -f /usr/local/share/vim/vim80/colors/monokai.vim 
rm -f /usr/local/share/vim/vim80/colors/Tomorrow-Night-Eighties.vim 

rm -f /usr/share/vim/vim74/colors/monokai.vim 
rm -f /usr/share/vim/vim74/colors/Tomorrow-Night-Eighties.vim 

rm -f /usr/share/vim/vim80/colors/monokai.vim
rm -f /usr/share/vim/vim80/colors/Tomorrow-Night-Eighties.vim 

rm -f /usr/share/nvim/runtime/colors/monokai.vim  
rm -f /usr/share/nvim/runtime/colors/Tomorrow-Night-Eighties.vim  


#删除vimrc
rm -f ~/.vim/vimrc
rm -f ~/.vimrc
rm -f /etc/vim/vimrc

#删除ideavimrc
rm -f ~/.ideavimrc

#删除vimrc
rm -f ~/.config/nvim/init.vim


echo "Uninstall vimrc ,ideavimrc and theme successfully!"

