# Vim

This is my vimrc file, include my custom keymap, plugins and theme.





[TOC]



## 使用方法(usage)

```
安装(install):
Mac/Linux终端下运行 sudo ./install.sh 
Windows Cmd下运行 ./install.cmd 

卸载(uninstall):
Mac/Linux终端下运行 sudo ./uninstall.sh
```





## 快捷键 (Keymap)

### Vim自定义快捷键 (Vim custom keyboard shortcuts)

| 按键(映射)         | 功能                                         | 模式(普通模式N, 插入模式I, 选择模式V, 行选择模式HV, 列选择模式LV) | 命令                                          | 备注           |
| ------------------ | -------------------------------------------- | ------------------------------------------------------------ | --------------------------------------------- | -------------- |
| F2                 | babel-node调试当前文件                       | N 或 I 或 V                                                  | <ESC> :w <bar> !clear && babel-node % <enter> |                |
| F3                 | node调试当前文件                             | N 或 I 或 V                                                  | <ESC> :w <bar> !clear && node % <enter>       |                |
| F4                 | ruby调试当前文件                             | N 或 I 或 V                                                  | <ESC> :w <bar> !clear && ruby % <enter>       |                |
| F5                 | php调试当前文件                              | N 或 I 或 V                                                  | <ESC> :w <bar> !clear && php % <enter>        |                |
| Ctrl + s           | 保存                                         | N 或 I                                                       | <esc>:w<CR> 或 <esc>:w<CR>a                   |                |
| Ctrl + ^           | 跳转到最近一次使用的标签                     | N 或 I                                                       | <esc>:w<enter><c-^>                           |                |
| Ctrl + c           | 复制                                         | N 或 V                                                       | y 或 ya                                       |                |
| Ctrl + v           | 粘贴                                         | N 或 I 或 V                                                  | p 或 <esc>pa 或 "_dPa                         |                |
| Ctrl + x           | 剪贴                                         | N 或 V                                                       | d 或 da                                       |                |
| Ctrl + a           | 全选                                         | N 或 I                                                       | <esc>ggVG                                     |                |
| /                  | 注释所选行                                   | V                                                            | I//<esc>                                      | 失效?          |
| //                 | 注释?                                        | V                                                            | ^xx                                           | 失效?          |
| p                  | 粘贴, 不会把选中的东西复制到寄存器           | V                                                            | "_dP                                          |                |
| Ctrl + e           | 使屏幕向上移动一行，自动让光标处于屏幕中间行 | N                                                            | jzz                                           | 未启用         |
| Ctrl + y           | 使屏幕向上移动一行，自动让光标处于屏幕中间行 | N                                                            | kzz                                           | 未启用         |
| jk 或 kj 或 jj     | 返回普通模式                                 | I                                                            | <exc>                                         |                |
| Ctrl + j           | 向下移动，保持插入模式                       | I                                                            | <up>                                          |                |
| Ctrl + k           | 向上移动，保持插入模式                       | I                                                            | <down>                                        |                |
| Ctrl + h           | 向左移动，保持插入模式                       | I                                                            | <left>                                        |                |
| Ctrl + l           | 向右移动，保持插入模式                       | I                                                            | <right>                                       |                |
| Ctrl + x           | delete 向后删除，保持插入模式                | I                                                            | <delete>                                      |                |
| Ctrl + d           | 向下移动半屏，回到普通模式                   | I                                                            | <esc><c-d>                                    |                |
| Ctrl + u           | 向上移动半屏，回到普通模式                   | I                                                            | <esc><c-u>                                    |                |
| Ctrl + e           | 屏幕向上滚动一行，保持插入模式               | I                                                            | <esc><c-e>a                                   |                |
| Ctrl + y           | 屏幕向下滚动一行，保持插入模式               | I                                                            | <esc><c-y>a                                   |                |
| Ctrl + w           | 移动到本单词尾部，保持插入模式               | I                                                            | <esc>ea                                       |                |
| Ctrl + w           | 移动到本单词尾部                             | N                                                            | <esc>e                                        |                |
| Ctrl + b           | 移动到本单词头部，保持插入模式               | I                                                            | <esc>bi                                       |                |
| Ctrl + b           | 移动到本单词头部                             | N                                                            | <esc>b                                        |                |
| Esc + Esc          | 取消搜索高亮                                 | N                                                            | <esc>:nohl<cr><esc>                           |                |
| Enter              | 换行                                         | N                                                            | i<enter><esc>                                 |                |
| BackSpace          | 删除，并进入插入模式                         | N 或 V                                                       | <esc>i<bs> 或 c                               |                |
| Ctrl + Tab         | 跳转到下一个buffer(理解为标签)               | N                                                            | :w<cr><bar>:bn<CR>                            |                |
| Ctrl + Shirt + Tab | 跳转到上一个buffer(理解为标签)               | N                                                            | :w<cr><bar>:bp<CR>                            |                |
| m<space>           | 格式化并保存                                 | N                                                            | mx<esc>gg=G<esc>:w<cr>`x                      |                |
| *                  | 向上查找当前单词                             | N                                                            | #                                             |                |
| #                  | 向下查找当前单词                             | N                                                            | *                                             |                |
| !                  | 移动到行头部                                 | N 或 V                                                       | ^                                             |                |
| @                  | 移动到行尾部                                 | N 或 V                                                       | $                                             |                |
| fv                 | 进入块选择模式                               | N                                                            | <c-v>                                         |                |
| Ctrl + k           | 跳转到上方的buffer(理解为标签)               | N 或 V                                                       | <esc>:w<cr><bar><c-w>k                        |                |
| Ctrl + j           | 跳转到下方的buffer(理解为标签)               | N 或 V                                                       | <esc>:w<cr><bar><c-w>j                        |                |
| Ctrl + h           | 跳转到左方的buffer(理解为标签)               | N 或 V                                                       | <esc>:call SwitchBufWin("previous")<CR>       | 调用自定义函数 |
| Ctrl + l           | 跳转到右方的buffer(理解为标签)               | N 或 V                                                       | <esc>:call SwitchBufWin("next")<CR>           | 调用自定义函数 |
| Ctrl + n           | 跳转到下方的buffer(理解为标签)               | N 或 V                                                       | <esc>:call CloseBufWin()<CR>                  | 调用自定义函数 |
| Ctrl + z       | 撤销                                         | N 或 I 或 V                                                  | <esc>ua 或 <esc>u                                            |        |
| Ctrl + r       | 重做                                         | I 或 V                                                       | <esc><c-r>a 或 <esc><c-r>                                    |        |
| vw | 选中当前单词 | N | viw | |
| v" | 选中所在"间的内容 | N | vi" | |
| v' | 选中所在'间的内容 | N | vi' | |
| v( 或 v) | 选中所在()间的内容 | N | vi( 或 vi) | |
| v[ 或 v] | 选中所在[]间的内容 | N | vi[ 或 vi] | |
| v{ 或 v} | 选中所在{}间的内容 | N | vi{ 或 vi} | |
| v< 或 v> | 选中所在<>间的内容 | N | vi< 或 vi> | |
| v` | 选中所在`间的内容 | N | vi` | |
| v! | 选中当前位置到行首的内容 | N | v^ | |
| v@ | 选中当前位置到行末的内容 | N | v$ | |
| yw | 复制当前单词 | N | yiw | |
| y" | 复制所在"间的内容 | N | yi" | |
| y' | 复制所在'间的内容 | N | yi' | |
| y( 或 y) | 复制所在()间的内容 | N | yi( 或 yi) | |
| y[ 或 y] | 复制所在[]间的内容 | N | yi[ 或 yi] | |
| y{ 或 y} | 复制所在{}间的内容 | N | yi{ 或 yi} | |
| y< 或 y> | 复制所在<>间的内容 | N | yi< 或 yi> | |
| y` | 复制所在`间的内容 | N | yi` | |
| y! | 复制当前位置到行首的内容 | N | v^y | |
| y@ | 复制当前位置到行末的内容 | N | v$y | |
| cw 或 dw | 删除当前单词 | N | ciw 或 diw | |
| c" 或 d" | 删除所在"间的内容 | N | ci" 或 di" | |
| c'  或 d' | 删除所在'间的内容 | N | ci'  或 di' | |
| c( 或 c) 或 d( 或 d) | 删除所在()间的内容 | N | ci( 或 ci) 或 di( 或 di) | |
| c[ 或 c] 或 d[ 或 d] | 删除所在[]间的内容 | N | ci[ 或 ci] 或 di[ 或 di] | |
| c{ 或 c} 或 d{ 或 d} | 删除所在{}间的内容 | N | ci{ 或 ci} 或 di{ 或 di} | |
| c< 或 c> 或 d< 或 d> | 删除所在<>间的内容 | N | ci< 或 ci> 或 di< 或 di> | |
| c` 或 d` | 删除所在`间的内容 | N | ci` 或 di` | |
| c! 或 d! | 删除当前位置到行首的内容 | N | v^c 或 v^d | |
| c@ 或 d@ | 删除当前位置到行末的内容 | N | v$c 或 v$d | |
| rw | 替换当前单词为剪切板内容 | N | viw"_dP<esc> | |
| R" | 替换所在"间的内容为剪切板内容 | N | vi""_dP<esc> | |
| R' | 替换所在'间的内容为剪切板内容 | N | vi'"_dP<esc> | |
| R( 或 R) | 替换所在()间的内容为剪切板内容 | N | vi("_dP<esc> 或 vi)"_dP<esc> | |
| R[ 或 R] | 替换所在[]间的内容为剪切板内容 | N | vi["_dP<esc> 或 vi]"_dP<esc> | |
| R{ 或 R} | 替换所在{}间的内容为剪切板内容 | N | vi{"_dP<esc> 或 vi}"_dP<esc> | |
| R< 或 R> | 替换所在<>间的内容为剪切板内容 | N | vi<"_dP<esc> 或 vi>"_dP<esc> | |
| R` | 替换所在`间的内容为剪切板内容 | N | vi`"_dP<esc> | |
| R! | 替换当前位置到行首的内容为剪切板内容 | N | v^"_dP<esc> | |
| R@ | 替换当前位置到行末的内容为剪切板内容 | N | v$"_dP<esc> | |
| Ctrl + 1 | 跳转到行首 | I 或 N | <esc>^i 或 <esc>^ | mac下失效 |
| Ctrl + 2 | 跳转到行尾 | I 或 N | <esc>^$ 或 <esc>$ | mac下失效 |
| gu | 转换当前单词为全大写 |  N | <esc>viwgUU |  |
| gi | 转换当前单词为全小写 |  N | <esc>viwguu |  |
| gu | 转换当前单词为全大写 |  V | gUU |  |
| gi | 转换当前单词为全小写 |  V | guu |  |





### Vim第三方插件快捷键 (Vim third party plug-in shortcut key)

| 按键(映射)   | 功能               | 模式(普通模式N, 插入模式I, 选择模式V, 行选择模式HV, 列选择模式LV) | 命令                                                    | 插件                     |
| ------------ | ------------------ | ------------------------------------------------------------ | ------------------------------------------------------- | ------------------------ |
| ga           | 格式化对齐         | N 或 X                                                       | <Plug>(EasyAlign)                                       | vim-easy-align           |
| / 或 ? 或 g/ | 向上或下查找关键字 | N 或 V                                                       | <Plug>(incsearch-forward) 或 <Plug>(incsearch-backward) | incsearch.vim            |
| K            | 扩大到下一个选区   | V                                                            | <Plug>(expand_region_expand)                            | vim-expand-region        |
| J            | 缩小到下一个选区   | V                                                            | <Plug>(expand_region_shrink)                            | vim-expand-region        |
| Ctrl + u     | 流畅向上滚动半屏   | N                                                            | :call smooth_scroll#up(&scroll, 0, 2)<CR>               | vim-smooth-scroll 未启用 |
| Ctrl + d     | 流畅向下滚动半屏   | N                                                            | :call smooth_scroll#down(&scroll, 0, 2)<CR>             | vim-smooth-scroll 未启用 |
| Ctrl + b     | 流畅向上滚动一屏   | N                                                            | :call smooth_scroll#up(&scroll*2, 0, 4)<CR>             | vim-smooth-scroll 未启用 |
| Ctrl + f     | 流畅向下滚动一屏   | N                                                            | :call smooth_scroll#down(&scroll*2, 0, 4)<CR>           | vim-smooth-scroll 未启用 |
| :E           | 打开/关闭目录树    | N                                                            |                                                         | nerdtree                 |





### Vim第三方插件列表 (List of Vim third-party plug-ins)

| 插件名              | 功能               | 链接                                             | 备注                   |
| ------------------- | ------------------ | ------------------------------------------------ | ---------------------- |
| vim-plug            | 插件管理器         | https://github.com/junegunn/vim-plug             | 首先要安装的插件       |
| fzf                 | 文件搜索           | https://github.com/junegunn/fzf.git              |                        |
| YouCompleteMe       | 智能补全           | https://github.com/Valloric/YouCompleteMe.git    | 未启用, 需要Python支持 |
| neocomplete.vim     | 智能补全           | https://github.com/Shougo/neocomplete.vim.git    | 未启用, 需要Lua支持    |
| supertab            | 智能补全(Tab补全)  | https://github.com/ervandew/supertab.git         |                        |
| neocomplcache.vim   | 智能补全           | Shougo/neocomplcache.vim                         |                        |
| ale                 | 语法检查           | w0rp/ale                                         | 未启用, 只支持vim8     |
| syntastic           | 语法检查           | https://github.com/vim-syntastic/syntastic.git   |                        |
| vim-easy-align      | 代码格式化         | junegunn/vim-easy-align                          |                        |
| tabular             | 代码格式化         | https://github.com/godlygeek/tabular.git         |                        |
| vim-sneak           | f和F支持多行跳转   | justinmk/vim-sneak                               |                        |
| incsearch.vim       | 增强/和?功能       | haya14busa/incsearch.vim                         |                        |
| vim-commentary      | 快速注释           | https://github.com/tpope/vim-commentary.git      |                        |
| vim-expand-region   | 快速选择文本       | https://github.com/terryma/vim-expand-region.git |                        |
| vim-smooth-scroll   | 平滑滚动           | https://github.com/terryma/vim-smooth-scroll.git |                        |
| vim-airline         | 状态栏增强         | https://github.com/vim-airline/vim-airline.git   |                        |
| nerdtree            | 文件管理器(目录树) | scrooloose/nerdtree                              |                        |
| nerdtree-git-plugin | 文件管理器(目录树) | Xuyuanp/nerdtree-git-plugin                      |                        |
| vim-abolish         | 变量风格转换插件   | https://github.com/tpope/vim-abolish.git         |                        |





### IdeaVim 自定义快捷键 (IdeaVim custom keyboard shortcuts)

| 按键(映射)     | 功能                                         | 模式(普通模式N, 插入模式I, 选择模式V, 行选择模式HV, 列选择模式LV) | 命令                                                         | 备注   |
| -------------- | -------------------------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ | ------ |
| Ctrl + s       | 保存                                         | N 或 I                                                       | <esc>:w<CR> 或 <esc>:w<CR>a                                  |        |
| Ctrl + c       | 复制                                         | N 或 V                                                       | y 或 ya                                                      |        |
| Ctrl + v       | 粘贴                                         | N 或 I 或 V                                                  | p 或 <esc>pa 或 "_dPa                                        |        |
| Ctrl + x       | 剪贴                                         | N 或 V                                                       | d 或 da                                                      |        |
| Ctrl + a       | 全选                                         | N 或 I                                                       | <esc>ggVG                                                    |        |
| p              | 粘贴, 不会把选中的东西复制到寄存器           | V                                                            | "_dP                                                         |        |
| Ctrl + e       | 使屏幕向上移动一行，自动让光标处于屏幕中间行 | N                                                            | jzz                                                          | 未启用 |
| Ctrl + y       | 使屏幕向上移动一行，自动让光标处于屏幕中间行 | N                                                            | kzz                                                          | 未启用 |
| jk 或 kj 或 jj | 返回普通模式                                 | I                                                            | <exc>                                                        |        |
| Ctrl + j       | 向下移动，保持插入模式                       | I                                                            | <up>                                                         |        |
| Ctrl + k       | 向上移动，保持插入模式                       | I                                                            | <down>                                                       |        |
| Ctrl + h       | 向左移动，保持插入模式                       | I                                                            | <left>                                                       |        |
| Ctrl + l       | 向右移动，保持插入模式                       | I                                                            | <right>                                                      |        |
| Ctrl + x       | delete 向后删除，保持插入模式                | I                                                            | <delete>                                                     |        |
| Ctrl + d       | 向下移动半屏，回到普通模式                   | I                                                            | <esc><c-d>                                                   |        |
| Ctrl + u       | 向上移动半屏，回到普通模式                   | I                                                            | <esc><c-u>                                                   |        |
| Ctrl + e       | 屏幕向上滚动一行，保持插入模式               | I                                                            | <esc><c-e>a                                                  |        |
| Ctrl + y       | 屏幕向下滚动一行，保持插入模式               | I                                                            | <esc><c-y>a                                                  |        |
| Ctrl + w       | 移动到本单词尾部，保持插入模式               | I                                                            | <esc>ea                                                      |        |
| Ctrl + w       | 移动到本单词尾部                             | N                                                            | <esc>e                                                       |        |
| Ctrl + b       | 移动到本单词头部，保持插入模式               | I                                                            | <esc>bi                                                      |        |
| Ctrl + b       | 移动到本单词头部                             | N                                                            | <esc>b                                                       |        |
| Esc + Esc      | 取消搜索高亮                                 | N                                                            | <esc>:nohl<cr><esc>                                          |        |
| Enter          | 换行                                         | N 或 V                                                       | i<enter><esc> 或 <Esc>i<enter><esc>                          |        |
| BackSpace      | 删除，并进入插入模式                         | N 或 V                                                       | <esc>i<bs> 或 c                                              |        |
| m<space>       | 格式化并保存                                 | N 或 I                                                       | <Esc>mx<esc>:action ReformatCode<CR><Bar><Esc>:action SaveAll<CR><esc>`x |        |
| *              | 向上查找当前单词                             | N                                                            | #                                                            |        |
| #              | 向下查找当前单词                             | N                                                            | *                                                            |        |
| !              | 移动到行头部                                 | N 或 V                                                       | ^                                                            |        |
| @              | 移动到行尾部                                 | N 或 V                                                       | $                                                            |        |
| fv             | 进入块选择模式                               | N                                                            | <c-v>                                                        |        |
| Ctrl + z       | 撤销                                         | N 或 I 或 V                                                  | <esc>ua 或 <esc>u                                            |        |
| Ctrl + r       | 重做                                         | I 或 V                                                       | <esc><c-r>a 或 <esc><c-r>                                    |        |
| vw | 选中当前单词 | N | viw | |
| v" | 选中所在"间的内容 | N | vi" | |
| v' | 选中所在'间的内容 | N | vi' | |
| v( 或 v) | 选中所在()间的内容 | N | vi( 或 vi) | |
| v[ 或 v] | 选中所在[]间的内容 | N | vi[ 或 vi] | |
| v{ 或 v} | 选中所在{}间的内容 | N | vi{ 或 vi} | |
| v< 或 v> | 选中所在<>间的内容 | N | vi< 或 vi> | |
| v` | 选中所在`间的内容 | N | vi` | |
| v! | 选中当前位置到行首的内容 | N | v^ | |
| v@ | 选中当前位置到行末的内容 | N | v$ | |
| yw | 复制当前单词 | N | yiw | |
| y" | 复制所在"间的内容 | N | yi" | |
| y' | 复制所在'间的内容 | N | yi' | |
| y( 或 y) | 复制所在()间的内容 | N | yi( 或 yi) | |
| y[ 或 y] | 复制所在[]间的内容 | N | yi[ 或 yi] | |
| y{ 或 y} | 复制所在{}间的内容 | N | yi{ 或 yi} | |
| y< 或 y> | 复制所在<>间的内容 | N | yi< 或 yi> | |
| y` | 复制所在`间的内容 | N | yi` | |
| y! | 复制当前位置到行首的内容 | N | v^y | |
| y@ | 复制当前位置到行末的内容 | N | v$y | |
| cw 或 dw | 删除当前单词 | N | ciw 或 diw | |
| c" 或 d" | 删除所在"间的内容 | N | ci" 或 di" | |
| c'  或 d' | 删除所在'间的内容 | N | ci'  或 di' | |
| c( 或 c) 或 d( 或 d) | 删除所在()间的内容 | N | ci( 或 ci) 或 di( 或 di) | |
| c[ 或 c] 或 d[ 或 d] | 删除所在[]间的内容 | N | ci[ 或 ci] 或 di[ 或 di] | |
| c{ 或 c} 或 d{ 或 d} | 删除所在{}间的内容 | N | ci{ 或 ci} 或 di{ 或 di} | |
| c< 或 c> 或 d< 或 d> | 删除所在<>间的内容 | N | ci< 或 ci> 或 di< 或 di> | |
| c` 或 d` | 删除所在`间的内容 | N | ci` 或 di` | |
| c! 或 d! | 删除当前位置到行首的内容 | N | v^c 或 v^d | |
| c@ 或 d@ | 删除当前位置到行末的内容 | N | v$c 或 v$d | |
| rw | 替换当前单词为剪切板内容 | N | viw"_dP<esc> | |
| R" | 替换所在"间的内容为剪切板内容 | N | vi""_dP<esc> | |
| R' | 替换所在'间的内容为剪切板内容 | N | vi'"_dP<esc> | |
| R( 或 R) | 替换所在()间的内容为剪切板内容 | N | vi("_dP<esc> 或 vi)"_dP<esc> | |
| R[ 或 R] | 替换所在[]间的内容为剪切板内容 | N | vi["_dP<esc> 或 vi]"_dP<esc> | |
| R{ 或 R} | 替换所在{}间的内容为剪切板内容 | N | vi{"_dP<esc> 或 vi}"_dP<esc> | |
| R< 或 R> | 替换所在<>间的内容为剪切板内容 | N | vi<"_dP<esc> 或 vi>"_dP<esc> | |
| R` | 替换所在`间的内容为剪切板内容 | N | vi`"_dP<esc> | |
| R! | 替换当前位置到行首的内容为剪切板内容 | N | v^"_dP<esc> | |
| R@ | 替换当前位置到行末的内容为剪切板内容 | N | v$"_dP<esc> | |
| Ctrl + 1 | 跳转到行首 | I 或 N | <esc>^i 或 <esc>^ | |
| Ctrl + 2 | 跳转到行尾 | I 或 N | <esc>^$ 或 <esc>$ | |
| gu | 转换当前单词为全大写 |  N | <esc>viwgUU |  |
| gi | 转换当前单词为全小写 |  N | <esc>viwguu |  |
| gu | 转换当前单词为全大写 |  V | gUU |  |
| gi | 转换当前单词为全小写 |  V | guu |  |



### Idea 自定义快捷键 (Idea custom keyboard shortcuts)

| 快捷键     | 描述  |
| --------   | ------  |
| ---------------------------  | ---------------------------   |
| 目录树 | 目录树  |
|alt + s  |	 定位到目录树的当前文件  |   
|alt + d  |	 打开目录树选中的文件  |   
|alt + p	|	跳转到目录树  |   
| ---------------------------  | ---------------------------   |
| 标签	|	标签	  |   
|alt + q	|	切换到左边tab/框  |   
|alt + w	|	切换到右边tab/框  |   
|alt + e	|	关闭当前tab  |   
|alt + 1	|	切换到第1个tab  |   
|alt + 2	|	切换到第2个tab  |   
|alt + 3	|	切换到第3个tab  |   
|alt + 4	|	切换到第4个tab  |   
|alt + 5	|	切换到第5个tab  |   
|alt + 6	|	切换到最后一个tab  |  
| ---------------------------  | ---------------------------   | 
|版本控制|	版本控制  |   
|alt + g  |	打开/取消git版本控制框  |   
|ctrl + d|  对选中文件进行git的文件改动比较(若打开了git版本控制框)  |   
|alt + shift +a|	添加选中文件到git缓冲区(若打开了git版本控制框)  |   
|alt + l|	提交(commit)文件(若打开了git版本控制框)  |   
|alt + ctrl + z |	回滚选中的文件(若选中了git版本控制框中的文件)  |   
|alt + shift + l|	推送(push)代码(若打开了git版本控制框)  |   
|ctrl + shift + k |	提交和推送代码(commit和push)(若打开了git版本控制框)  |   
|alt + b	|	打开git分支框  |   
| ---------------------------  | ---------------------------   |
|   取消   | 取消 |   
|shift + esc 或 esc|	取消当前框/窗口  |  
| ---------------------------  | ---------------------------   |
|  搜索    | 搜索 |   
|shift + shift | 打开万能搜索框  |      
|alt + f|	   查找/替换当前文件的字符串  |   
|ctrl + f|	   查找当前文件的字符串  |   
| ctrl + shift + n 或 alt + shift + n |	全局打开指定文件  |   
|ctrl +shift+f	|	全局搜索字符串  |   
|ctrl +shift+r	|	全局替换字符串  |   
| ---------------------------  | ---------------------------   |
|  工具  | 工具 |   
|alt + t	|	打开/取消terminal终端框  |   
|alt + 7	|	打开/取消structure结构框  |   
|alt + m	|	打开/取消maven框  |   
|alt + shift + r	|	刷新maven依赖(重新导入maven依赖)  |   
|alt + n	|	打开/取消run框  |   
| ---------------------------  | ---------------------------   |
|  代码  | 代码 |  
|F12	|	跳转到定义  |   
|ctrl + F12	|	跳转到实现  |   
|alt + j	|	跳转到上一个方法  |   
|alt + k	|	跳转到下一个方法  |   
|alt + o	|	弹出代码补全框  |   
| ---------------------------  | ---------------------------   |
|  调试  | 调试 |  
|alt + i	|	打开/取消debug/service框  |   
|alt + y 	|	打开debug配置框  |   
|alt + shift + e	|	刷新项目(实现idea自带热部署功能)  |   
|ctrl + l	|	清除debug框的日志(若打开了debug框)  |  
|F3|		停止debug  |    
|F4|		debug  |    
|F5|		恢复debug  |   
|F6|		step over(debug到下一行代码)  |   
|F7|		step into(debug跳进去)|	  |   
|F8|		step out(debug跳出去)|	  |   
|F9|		设置/取消断点  |   
|alt + F8|		打开表达式计算器框  |   
| ---------------------------  | ---------------------------   |
|    文件 | 文件 |   
|ctrl + tab|		切换到上一个最近编辑的文件  |   
|ctrl + shift + tab	|	切换到下一个最近编辑的文件  |   
| ---------------------------  | ---------------------------   |



### Idea第三方插件快捷键 (Idea third party plug-in shortcut key)

| 快捷键     | 描述  |
| --------   | ------  |
| ---------------------------  | ---------------------------   |
| CamelCase |  CamelCase |
| alt + u  |	 切换当前单词的命名策略(驼峰<->下划线<->全大写) |  
| ---------------------------  | ---------------------------   |
| Translation | Translation |
| ctrl + shift + y  | 翻译当前选中的单词/句子	  |   
| ---------------------------  | ---------------------------   |



### Idea第三方插件列表 (List of Idea third-party plug-ins)

| 插件名              | 功能               | 备注                   |
| ------------------- | ------------------ | ---------------------- |
| ideavim            |     vim插件     |        |
|   Scroll From Source		 | 可以在project中定位当前文件 |       |
|   PHP Advanced AutoComplete		 | 增强phpstome的自动提醒功能  |       |
|   GoToTabs 		 | 允许用alt+数字去切换不同的tab  |       |
|   key promoter	 [可选]触发ide不同操作时, 弹出窗口显示对应快捷键  |       |
|   Markdown Navigator	比自带的md插件好用的md编辑, 预览插件  |       |
|   Wrap to Column	代码对齐线  |       |
|   CamelCase		 | 多种变量命名风格中转换  |       |
|   Translate		 | 	[可选]基于有道的翻译插件  |       |
|   gittoolbox		 | git的常用操作插件  |       |
|   Free mybatis plugin    方便mybatis开发的插件(主要是编写mapper.xml时方便)  |       |
|   Grep Console		 | 	给ide控制台不同级别的日志设置高亮颜色  |       |
|   JRebel for IntelliJ		 | 热部署插件  |       |
|   MyBatis Log Plugin		 | 把mybatis输出的sql日志还原为完整sql  |       |
|   MyBatis plugin		 | 收费, 方便mybatis开发的插件(主要是编写mapper.xml时方便)  |       |
|   Nyan Progress Bar		 | 修改ide所有进度条为一个彩虹颜色的进度条, 个性化  |       |
|   Rainbow Brackets		 | 代码中的括号设置为不同颜色, 方便匹配括号层级关系  |       |
|   RestfulToolkit		 | 	spring体系的根据url定位接口等实用功能  |       |
|   save actions		 | 	保存时进行自动格式化等功能  |       |
|   code screenshots		 | 可以把代码导出成图片的插件  |       |
|   jrebel-mybatisplus-extension		 | 辅助jrebel热部署, 让修改mybatis中的mapp.xml后实时生效  |       |
|   Translation		 | 	支持多种语言的翻译插件  |       |
|   File Watchers		 | 	允许检测文件变动去触发自定义操作  |       |
|   activate-power-mode		 | 	显示编码速度特效  |       |
|   power mode II		 | 	代码特效插件  |       |
|   Background Image Plus +		 | 	自动切换背景图  |       |
