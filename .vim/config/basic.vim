vim9script

# Automatically detect file types
filetype plugin indent on   
# 开启文件类型侦测
filetype on
# 根据侦测到的不同类型:加载对应的插件
filetype plugin on
# 语法高亮
syntax on

# 插入模式下用绝对行号, 普通模式下用相对
set number
set relativenumber
augroup numbertoggle
    autocmd!
    autocmd InsertEnter * set norelativenumber
    autocmd InsertLeave * set relativenumber
    autocmd WinEnter * set relativenumber
    autocmd WinLeave * set norelativenumber
augroup END

set ruler
set showmode
set hlsearch
set nobackup
set noswapfile
set history=1024
set autoread
set nobomb
# 使回格键（backspace）正常处理indent, eol, start等
set backspace=indent,eol,start whichwrap+=<,>,[,]
# 设置 alt 键不映射到菜单栏
set winaltkeys=no

# 查询当前编辑的文件的字符编码方式并打开
set fileencodings=utf-8,gbk2312,gbk,gb18030,cp936

# vim内部使用的字符编码方式
set encoding=utf-8

# 分割出来的窗口位于当前窗口下边/右边
set splitbelow
set splitright

# 缩进
set autoindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
autocmd FileType python set textwidth=79

set clipboard=unnamedplus

set updatetime=200
