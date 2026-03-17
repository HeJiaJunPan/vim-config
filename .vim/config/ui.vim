vim9script

# -------------------------------------主题配置-------------------------------------------
if  filereadable(expand("~/.vim/plugged/space-vim-dark/colors/space-vim-dark.vim"))
    set t_Co=256
    #set background=dark
    #set termguicolors
    colorscheme space-vim-dark

    #背景透明设置
    hi Normal     ctermbg=NONE guibg=NONE
    hi LineNr     ctermbg=NONE guibg=NONE
    hi SignColumn ctermbg=NONE guibg=NONE
endif

#-------------------------------------状态栏-------------------------------------------
# 状态栏配置必须在主题配置下面才生效
set laststatus=2
#set statusline=%<%1*[B-%n]%*
#set statusline+=%2*\ %F%=\ %*
#set statusline+=%3*\ %m%r%y%w\ %*
#set statusline+=%=%4*\ %{&ff}\ \|\ %{\"\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"\ \|\"}\ %-14.(%l:%c%V%)%*
#set statusline+=%5*\ %P\ %*
set statusline=%<%1*[B-%n]%*%2*\ %F%=\ %*%3*\ %m%r%y%w\ %*%4*\ %{&ff}\ \|\ %{\"\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"\ \|\"}\ %-14.(%l:%c%V%)%*%5*\ %P\ %*
hi User1 cterm=bold ctermfg=249 ctermbg=240 gui=bold guifg=#b2b2b2 guibg=#585858
hi User2 cterm=bold ctermfg=169 ctermbg=238 gui=bold guifg=#d75faf guibg=#444444
hi User3 cterm=None ctermfg=250 ctermbg=238 gui=None guifg=#bcbcbc guibg=#444444
hi User4 cterm=None ctermfg=250 ctermbg=238 gui=None guifg=#bcbcbc guibg=#444444
hi User5 cterm=None ctermfg=249 ctermbg=240 gui=None guifg=#b2b2b2 guibg=#585858
