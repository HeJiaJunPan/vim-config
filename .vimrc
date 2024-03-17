set nocompatible        " Must be first line
let g:coc_global_extensions = ['coc-tsserver','coc-json','coc-html','coc-css','coc-pyright','coc-sh','coc-sh','coc-lists','coc-pairs','coc-marketplace','coc-prettier','coc-explorer']

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
