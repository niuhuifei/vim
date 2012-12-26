set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
Bundle 'The-NERD-tree'
Bundle 'Lokaltog/vim-powerline'
Bundle 'pkufranky/VimRepress'
Bundle 'hallison/vim-markdown'

filetype plugin indent on     " required!

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" 打开语法高亮
syntax on

" 为不同文件类型使用不用缩进
filetype indent on

" 显示行号
set number
set cursorline

if has("gui_running")
  colorscheme peachpuff
endif

" 打开自动缩进
set autoindent

" 设置自动缩进长度为四个空格
set shiftwidth=4

" 按退格键时可以一次删掉 4 个空格
set softtabstop=4

" 设定 tab 键长度为 4
set tabstop=4
 
" 将 tab 展开为空格
set expandtab
 
" 去掉输入错误时的提示声音
set noerrorbells
 
" 右下角显示光标位置
set ruler
 
" 总是显示状态行
set laststatus=2
 
" 强调匹配的括号
set showmatch
 
" 光标短暂跳转到匹配括号的时间, 单位是十分之一秒
set matchtime=2
 
" 显示当前正在键入的命令
set showcmd
 
" 设置自动切换目录为当前文件所在目录，用 :sh 时候会很方便
set autochdir
 
" 搜索时忽略大小写
set ignorecase
 
" 随着键入即时搜索
set incsearch
 
" 有一个或以上大写字母时仍大小写敏感
set smartcase

" 设置NERDTree的选项
let NERDTreeMinimalUI=1
let NERDChristmasTree=1
" Give a shortcut key to NERD Tree
map <F2> :NERDTreeToggle<CR>

" 设置powerline状态栏
set nocompatible
set t_Co=256
set enc=utf-8
let termencoding=&encoding
set fileencodings=utf-8,gbk,ucs-bom,cp936
let g:Powerline_symbols = 'fancy'
set guifont=Ubuntu\ Mono\ for\ Powerline\ 12

" 设置vimpress
let VIMPRESS=[{'username':'admin', 
               \'password':'', 
               \'blog_url':'http://yife.im/wordpress/' 
               \},
               \{'username':'admin', 
               \'blog_url':'http://66.yife.im/' 
               \}]
map <leader>P :BlogPreview<CR>

set list listchars=tab:>.,trail:.,extends:>,precedes:<,eol:¶
set lines=28
set columns=160

