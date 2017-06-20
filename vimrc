" The default vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2016 Sep 02
"
" This is loaded if no vimrc file was found.
" Except when Vim is run with "-u NONE" or "-C".
" Individual settings can be reverted with ":set option&".
" Other commands can be reverted as mentioned below.

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
    finish
endif

" Bail out if something that ran earlier, e.g. a system wide vimrc, does not
" want Vim to use these default values.
if exists('skip_defaults_vim')
    finish
endif

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Allow backspacing over everything in insert mode.
set backspace=indent,eol,start

set history=200		" keep 200 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set wildmenu		" display completion matches in a status line

set ttimeout		" time out for key codes
set ttimeoutlen=100	" wait up to 100ms after Esc for special key

" Show @@@ in the last line if it is truncated.
"set display=truncate

" Show a few lines of context around the cursor.  Note that this makes the
" text scroll if you mouse-click near the start or end of the window.
set scrolloff=5

" Do incremental searching when it's possible to timeout.
if has('reltime')
    set incsearch
endif

" Do not recognize octal numbers for Ctrl-A and Ctrl-X, most users find it
" confusing.
set nrformats-=octal

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries.
if has('win32')
    set guioptions-=t
endif

" Don't use Ex mode, use Q for formatting.
" Revert with ":unmap Q".
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
" Revert with ":iunmap <C-U>".
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine.  By enabling it you
" can position the cursor, Visually select and scroll with the mouse.
if has('mouse')
    set mouse=a
endif

" Switch syntax highlighting on when the terminal has colors or when using the
" GUI (which always has colors).
if &t_Co > 2 || has("gui_running")
    " Revert with ":syntax off".
    syntax on

    " I like highlighting strings inside C comments.
    " Revert with ":unlet c_comment_strings".
    let c_comment_strings=1
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

    " Enable file type detection.
    " Use the default filetype settings, so that mail gets 'tw' set to 72,
    " 'cindent' is on in C files, etc.
    " Also load indent files, to automatically do language-dependent indenting.
    " Revert with ":filetype off".
    filetype plugin indent on

    " Put these in an autocmd group, so that you can revert them with:
    " ":augroup vimStartup | au! | augroup END"
    augroup vimStartup
        au!

        " When editing a file, always jump to the last known cursor position.
        " Don't do it when the position is invalid or when inside an event handler
        " (happens when dropping a file on gvim).
        autocmd BufReadPost *
                    \ if line("'\"") >= 1 && line("'\"") <= line("$") |
                    \   exe "normal! g`\"" |
                    \ endif

    augroup END

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
" Revert with: ":delcommand DiffOrig".
if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
                \ | wincmd p | diffthis
endif

if has('langmap') && exists('+langremap')
    " Prevent that the langmap option applies to characters that result from a
    " mapping.  If set (default), this may break plugins (but it's backward
    " compatible).
    set nolangremap
endif

















""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""MY SETTING"""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""






" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
    syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
    source /etc/vim/vimrc.local
endif

" Set Vim help to Chinese and utf-8 encoding
if version >= 603
    set helplang=cn
    set encoding=utf-8
    set fileencoding=utf-8
endif



"  < 判断操作系统是否是 Windows 还是 Linux >
let g:iswindows = 0
let g:islinux = 0
let g:isidea = 0   "是否为jetbrains系列ideavim插件的配置文件
if(has("win32") || has("win64") || has("win95") || has("win16"))
    let g:iswindows = 1
else
    let g:islinux = 1
endif

"  < 判断是终端还是 Gvim >
if has("gui_running")
    let g:isGUI = 1
else
    let g:isGUI = 0
endif

"是否为jetbrains系列ideavim插件的配置文件
if ("ideavimrc" == expand('%:t') || ".ideavimrc" == expand('%:t'))
    let g:isidea = 1
endif


" Linux系统""""""""""""""""""""""""""""""""""""""""""""""""
if (g:islinux)
    "Linux系统 通用设置"""""""""""""""""""""""""""""""""""""

    if !empty(glob("~/desktop"))
        cd ~/desktop
    elseif !empty(glob("~/Desktop"))
        cd ~/Desktop
    elseif !empty(glob("~/桌面/")
        cd ~/桌面
    endif

    "Linux系统 非通用设置""""""""""""""""""""""""""""""""""
    if (g:isGUI)     " Gvim版本
        set lines=23 columns=48  "设置初始界面大小
    else    " 终端版本
    endif

endif

" Windows系统""""""""""""""""""""""""""""""""""""""""""""
if(g:iswindows)
    "Windows系统 通用设置"""""""""""""""""""""""""""""""""""""

    "Windows系统 非通用设置""""""""""""""""""""""""""""""""""
    if (g:isGUI)     " Gvim版本

    else    " 终端版本

    endif

endif



" 如果是nvim运行
if has("nvim")
    set hidden   "为了从终端模式切换到其他buffer时不关闭终端

    tnoremap <esc> <c-\><c-n>
    tnoremap <c-[> <c-\><c-n>
    tnoremap jj <c-\><c-n>
    tnoremap jk <c-\><c-n>
    tnoremap kj <c-\><c-n>
    set viminfo+=n~/.nvim/tmpfiles/viminfo

endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""全局设置(不分系统和GUI)"""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
"set background=light
colorscheme monokai 
set guifont=Source_Code_Pro\ 12

set hlsearch        "高亮搜索
set incsearch       "在输入要搜索的文字时，实时匹配
set ignorecase        "搜索模式里忽略大小写
set smartcase         "如果搜索模式包含大写字符，就大小写敏感搜索, 全部是小写时就忽略大小写, 前提是要启用 'set ignorecase', 本项才生效
set incsearch       "在输入要搜索的文字时，实时匹配, 即时跳转到匹配处
set cursorline                   "突出显示当前行
set clipboard=unnamedplus	 "将复制,粘贴,剪切, 默认使用+寄存器(linux下是剪切板)
set wrap		"自动换行, 一行字数超出窗口宽度后自动换行
set tabstop=4
set shiftwidth=4            "换行时自动缩进4个空格
set smarttab   "指定按一次backspace(删除键)就删除shiftwidth(自动缩进)宽度的空格数
set smartindent                 "启用智能对齐方式
set expandtab              "将Tab键转换为空格
set nu
set rnu
set autochdir
set autoread
set mouse=a
set noswapfile

" ======= 恢复上次文件打开位置 ======= "  
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""映射"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <F2> <ESC> :w <bar> !babel-node % <enter>
inoremap <F2> <ESC> :w <bar> !babel-node % <enter>
vnoremap <F2> <ESC> :w <bar> !babel-node % <enter>

nnoremap <F3> <ESC> :w <bar> !node % <enter>
inoremap <F3> <ESC> :w <bar> !node % <enter>
vnoremap <F3> <ESC> :w <bar> !node % <enter>

nnoremap <F4> <ESC> :w <bar> !ruby % <enter>
inoremap <F4> <ESC> :w <bar> !ruby % <enter>
vnoremap <F4> <ESC> :w <bar> !ruby % <enter>

nnoremap <F5> <ESC> :w <bar> !php % <enter>
inoremap <F5> <ESC> :w <bar> !php % <enter>
vnoremap <F5> <ESC> :w <bar> !php % <enter>

noremap <c-s> <esc>:w<CR>
inoremap <c-s> <esc>:w<CR>a

"不会被使用  inoremap <c-c> ya
"不会被使用  inoremap <c-x> <esc>da
inoremap <c-v> <esc>pa

inoremap <c-^> <esc>:w<enter><c-^>
noremap <c-^> <esc>:w<enter><c-^>

vnoremap <c-c> ya
vnoremap <c-x> da
vnoremap <c-v> "_dPa

nnoremap <c-c> y
nnoremap <c-x> d
nnoremap <c-v> p

inoremap <c-a> <esc>ggVG
noremap <c-a> <esc>ggVG

vnoremap  /  I//<esc>
vnoremap  //  ^xx

"" 选中(可视模式)后粘贴, 不会把选中的东西复制到寄存器, phpstorm下失效
"xnoremap p  "_dP		 
" 选中(可视模式)后粘贴, 不会把选中的东西复制到寄存器
vnoremap p  "_dP

"便于高亮搜素后, 按esc键取消
"nnoremap  <c-e>  jzz 
"便于阅读代码, ctrl+e或ctrl+y使屏幕向上(下)移动一行时, 自动让光标处于屏幕中间行
"nnoremap  <c-y>  kzz

" 便于在插入模式快速返回普通模式然后进行导航等命令
inoremap  jj  <esc>
inoremap  jk  <esc>
inoremap  kj  <esc>
" inoremap  <Space>j  <esc>	 
" vnoremap  <Space>j  <esc>	 
" inoremap  <s-Space>  <space>
" vnoremap  <s-Space>  <space>

inoremap <c-k> <up>
inoremap <c-l> <Right>
inoremap <c-j> <down>
inoremap <c-h> <Left>
inoremap <c-x> <delete>
inoremap <c-d> <esc><c-d>
inoremap <c-u> <esc><c-u>
inoremap <c-y> <esc><c-y>a
inoremap <c-e> <esc><c-e>a
inoremap <c-w> <esc>ea
inoremap <c-b> <esc>bi

nnoremap <c-w> <esc>e
nnoremap <c-b> <esc>b

nnoremap  <esc><esc>  <esc>:nohl<cr><esc>
nnoremap  <enter> i<enter><esc>

"定制删除键功能 
nnoremap <bs> <esc>i<bs>
vnoremap <bs> c

"设置切换Buffer快捷键
noremap <C-tab> :w<cr><bar>:bn<CR>
noremap <C-s-tab> :w<cr><bar>:bp<CR>
noremap <C-j> <esc>:w<cr><bar><c-w>j
noremap <C-k> <esc>:w<cr><bar><c-w>k

nnoremap # *
nnoremap * #

"记住当前位置的格式化
nnoremap f<Space> mx<esc>gg=G<esc>:w<cr>`x

"进入块选择模式快捷键
nnoremap fv <c-v>

""""""""""""""""""""""""""""""""调用函数区""""""""""""""""""""""""""""""""""""""""""

noremap <C-l> <esc>:call SwitchBufWin("next")<CR>
noremap <C-h> <esc>:call SwitchBufWin("previous")<CR>
noremap <C-n> <esc>:call CloseBufWin()<CR>



""""""""""""""""""""""""""""""""函数区""""""""""""""""""""""""""""""""""""""""""""""""

"  切换到上一个或下一个buffer或窗口
function SwitchBufWin(cmd)
    let max_buf = bufnr('$')
    let cur_buf = bufnr('%')
    let min_buf = 0
    if a:cmd != "previous"
        if cur_buf < max_buf
            w
            bn
            return 0
        else  
            w
            execute "normal! \<C-w>l"
            return 1
        endif  
    else
        let find_min = 0
        while !find_min
            let min_buf += 1
            if buflisted(min_buf)
                let find_min = 1
            endif
        endwhile
        if min_buf < cur_buf
            w
            bp
            return 3
        else
            w
            execute "normal! \<C-w>h"
            return 4
        endif
    endif
endfunction

"  关闭当前buffer或窗口
function CloseBufWin()
    let total_buf = len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))
    if total_buf > 1
        w
        bdelete 
        return 0
    else  
        wq
        return 1
    endif  
endfunction








"""""""""""""""""""""""""""""""" 插件区""""""""""""""""""""""""""""""""""""""""""""""""

" if (g:isidea)
" "jetbrains系列的ide， 不支持插件
" else    


"vim-easy-align插件需要
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"incsearch.vim插件需要
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

"vim-expand-region插件需要
vnoremap K <Plug>(expand_region_expand)
vnoremap J <Plug>(expand_region_shrink)

"vim-smooth-scroll插件需要
" noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
" noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
" noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
" noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

"vim-airline插件,打开tabline功能,方便查看Buffer和切换,省去了minibufexpl插件 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

"syntastic插件需要
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
filetype on  
filetype plugin on  
filetype plugin indent on  

"nerdtree插件需要
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
command E :NERDTreeToggle<CR>

"neocomplete.vim启用
"let g:neocomplete#enable_at_startuT = 1


"let g:SuperTabDefaultCompletionType="context"   
let g:SuperTabDefaultCompletionType="<c-n>"
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 2


""""""""""""""vim-plug插件管理器"""""""""""""""""""""
call plug#begin('~/.vim/plugged')

"文件搜索
Plug 'https://github.com/junegunn/fzf.git'
"自动补全
"需要py支持   Plug 'https://github.com/Valloric/YouCompleteMe.git'
"需要lua支持   Plug 'https://github.com/Shougo/neocomplete.vim.git'
Plug 'https://github.com/ervandew/supertab.git'
Plug 'Shougo/neocomplcache.vim'
"语法检查, 只支持vim8
"Plug 'w0rp/ale'
Plug 'https://github.com/vim-syntastic/syntastic.git'
"代码格式化
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/godlygeek/tabular.git'
"f和F支持多行跳转
Plug 'justinmk/vim-sneak'
"增强/和?
Plug 'haya14busa/incsearch.vim'
"快速注释
Plug 'https://github.com/tpope/vim-commentary.git'
"快速选择文本
Plug 'https://github.com/terryma/vim-expand-region.git'
"平滑滚动
Plug 'https://github.com/terryma/vim-smooth-scroll.git'
"状态栏增强
Plug 'https://github.com/vim-airline/vim-airline.git'
"文件管理器
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()




" endif   "不是作为ideavim使用












