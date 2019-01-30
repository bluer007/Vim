# Vim

This is my vimrc file, include my custom keymap, plugins and theme.





[TOC]



## 使用方法(usage)

```
安装(install):
终端下运行sudo ./install.sh

卸载(uninstall):
终端下运行sudo ./uninstall.sh
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
| v! | 选中当前位置到行首的内容 | N | v^ | |
| v@ | 选中当前位置到行末的内容 | N | v$ | |
| yw | 复制当前单词 | N | yiw | |
| y" | 复制所在"间的内容 | N | yi" | |
| y' | 复制所在'间的内容 | N | yi' | |
| y( 或 y) | 复制所在()间的内容 | N | yi( 或 yi) | |
| y[ 或 y] | 复制所在[]间的内容 | N | yi[ 或 yi] | |
| y{ 或 y} | 复制所在{}间的内容 | N | yi{ 或 yi} | |
| y< 或 y> | 复制所在<>间的内容 | N | yi< 或 yi> | |
| y! | 复制当前位置到行首的内容 | N | v^y | |
| y@ | 复制当前位置到行末的内容 | N | v$y | |
| cw 或 dw | 删除当前单词 | N | ciw 或 diw | |
| c" 或 d" | 删除所在"间的内容 | N | ci" 或 di" | |
| c'  或 d' | 删除所在'间的内容 | N | ci'  或 di' | |
| c( 或 c) 或 d( 或 d) | 删除所在()间的内容 | N | ci( 或 ci) 或 di( 或 di) | |
| c[ 或 c] 或 d[ 或 d] | 删除所在[]间的内容 | N | ci[ 或 ci] 或 di[ 或 di] | |
| c{ 或 c} 或 d{ 或 d} | 删除所在{}间的内容 | N | ci{ 或 ci} 或 di{ 或 di} | |
| c< 或 c> 或 d< 或 d> | 删除所在<>间的内容 | N | ci< 或 ci> 或 di< 或 di> | |
| c! 或 d! | 删除当前位置到行首的内容 | N | v^c 或 v^d | |
| c@ 或 d! | 删除当前位置到行末的内容 | N | v$c 或 v$d | |
| rw | 替换当前单词为剪切板内容 | N | viw"_dP<esc> | |
| R" | 替换所在"间的内容为剪切板内容 | N | vi""_dP<esc> | |
| R' | 替换所在'间的内容为剪切板内容 | N | vi'"_dP<esc> | |
| R( 或 R) | 替换所在()间的内容为剪切板内容 | N | vi("_dP<esc> 或 vi)"_dP<esc> | |
| R[ 或 R] | 替换所在[]间的内容为剪切板内容 | N | vi["_dP<esc> 或 vi]"_dP<esc> | |
| R{ 或 R} | 替换所在{}间的内容为剪切板内容 | N | vi{"_dP<esc> 或 vi}"_dP<esc> | |
| R< 或 R> | 替换所在<>间的内容为剪切板内容 | N | vi<"_dP<esc> 或 vi>"_dP<esc> | |
| R! | 替换当前位置到行首的内容为剪切板内容 | N | v^"_dP<esc> | |
| R@ | 替换当前位置到行末的内容为剪切板内容 | N | v$"_dP<esc> | |





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





### Ideavim 自定义快捷键 (Ideavim custom keyboard shortcuts)

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
| v! | 选中当前位置到行首的内容 | N | v^ | |
| v@ | 选中当前位置到行末的内容 | N | v$ | |
| yw | 复制当前单词 | N | yiw | |
| y" | 复制所在"间的内容 | N | yi" | |
| y' | 复制所在'间的内容 | N | yi' | |
| y( 或 y) | 复制所在()间的内容 | N | yi( 或 yi) | |
| y[ 或 y] | 复制所在[]间的内容 | N | yi[ 或 yi] | |
| y{ 或 y} | 复制所在{}间的内容 | N | yi{ 或 yi} | |
| y< 或 y> | 复制所在<>间的内容 | N | yi< 或 yi> | |
| y! | 复制当前位置到行首的内容 | N | v^y | |
| y@ | 复制当前位置到行末的内容 | N | v$y | |
| cw 或 dw | 删除当前单词 | N | ciw 或 diw | |
| c" 或 d" | 删除所在"间的内容 | N | ci" 或 di" | |
| c'  或 d' | 删除所在'间的内容 | N | ci'  或 di' | |
| c( 或 c) 或 d( 或 d) | 删除所在()间的内容 | N | ci( 或 ci) 或 di( 或 di) | |
| c[ 或 c] 或 d[ 或 d] | 删除所在[]间的内容 | N | ci[ 或 ci] 或 di[ 或 di] | |
| c{ 或 c} 或 d{ 或 d} | 删除所在{}间的内容 | N | ci{ 或 ci} 或 di{ 或 di} | |
| c< 或 c> 或 d< 或 d> | 删除所在<>间的内容 | N | ci< 或 ci> 或 di< 或 di> | |
| c! 或 d! | 删除当前位置到行首的内容 | N | v^c 或 v^d | |
| c@ 或 d! | 删除当前位置到行末的内容 | N | v$c 或 v$d | |
| rw | 替换当前单词为剪切板内容 | N | viw"_dP<esc> | |
| R" | 替换所在"间的内容为剪切板内容 | N | vi""_dP<esc> | |
| R' | 替换所在'间的内容为剪切板内容 | N | vi'"_dP<esc> | |
| R( 或 R) | 替换所在()间的内容为剪切板内容 | N | vi("_dP<esc> 或 vi)"_dP<esc> | |
| R[ 或 R] | 替换所在[]间的内容为剪切板内容 | N | vi["_dP<esc> 或 vi]"_dP<esc> | |
| R{ 或 R} | 替换所在{}间的内容为剪切板内容 | N | vi{"_dP<esc> 或 vi}"_dP<esc> | |
| R< 或 R> | 替换所在<>间的内容为剪切板内容 | N | vi<"_dP<esc> 或 vi>"_dP<esc> | |
| R! | 替换当前位置到行首的内容为剪切板内容 | N | v^"_dP<esc> | |
| R@ | 替换当前位置到行末的内容为剪切板内容 | N | v$"_dP<esc> | |

