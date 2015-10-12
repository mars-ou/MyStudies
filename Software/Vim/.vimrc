set nocompatible  "关闭与VI的兼容
set autoread
set shortmess=atI

set number  "显示行号
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set autoindent "自动对齐，使用上一行的对齐方式
set smartindent "智能对齐方式

set nobackup
set nowb
set noswapfile

set mouse-=a
set selection=exclusive
set selectmode=mouse,key

set history=1000

set background=dark "设置背景为灰色

syntax enable
syntax on  "打开语法高亮显示

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

set so=7
set cursorline

set showcmd

set showmatch  "设置匹配模式，类似当输入一个左括号时匹配上相应的那个右括号

set formatoptions+=B

set cmdheight=2


set guioptions-=T
set vb t_vb=
set ruler "在编辑过程中，在右下角显示光标位置的状态行
set nohls
set incsearch "搜索自动定位

let &termencoding=&encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,gbk

set noimdisable
autocmd! InsertLeave * set imdisable|set iminsert=0
autocmd! InsertEnter * set noimdisable|set iminsert=0

set backspace=eol,start,indent

autocmd FileType python set tabstop=4 shiftwidth=4 expandtab
autocmd FileType python set omnifunc=pythoncomplete#Complete

autocmd! bufwritepost .vimrc source % " vimrc autoload

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

let g:NERDTreeUseSimpleIndicator = 1

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/.vim/plugged')

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'

    Plugin 'scrooloose/nerdtree'

    Plugin 'JamshedVesuna/vim-markdown-preview'

    " All of your Plugins must be added before the following line
call vundle#end()            " required
