if filereadable(expand("~/.vim/.vimrc.local"))
    source ~/.vim/.vimrc.local
endif

if filereadable(expand("~/.vim/.vimrc.bundles"))
    source ~/.vim/.vimrc.bundles
endif
