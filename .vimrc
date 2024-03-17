set nocompatible        " Must be first line

if filereadable(expand("~/.vim/.vimrc.local"))
    source ~/.vim/.vimrc.local
endif

if filereadable(expand("~/.vim/.vimrc.plugs"))
    source ~/.vim/.vimrc.plugs
endif

if filereadable(expand("~/.vim/.vimrc.coc"))
    source ~/.vim/.vimrc.coc
endif

if filereadable(expand("~/.vim/.vimrc.bundles"))
    source ~/.vim/.vimrc.bundles
endif
