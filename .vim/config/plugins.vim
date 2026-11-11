vim9script

plug#begin('~/.vim/plugged')

# LSP
Plug 'girishji/vimcomplete'

# Search and Tree
Plug 'lambdalisue/fern.vim'
Plug 'vim-fuzzbox/fuzzbox.vim'

# Markdown
Plug 'plasticboy/vim-markdown'

Plug 'scrooloose/nerdcommenter'

Plug 'liuchengxu/space-vim-dark'

Plug 'tpope/vim-surround'

Plug 'easymotion/vim-easymotion'

# osc52支持，仅SSH环境生效
if !empty($SSH_TTY)
    Plug 'ojroques/vim-oscyank', {'branch': 'main'}
endif

plug#end()


# --------------------------------------------------------
# ---------------------插件配置----------------------------
# --------------------------------------------------------

## vim-oscyank
if !empty($SSH_TTY) && isdirectory(expand("~/.vim/plugged/vim-oscyank"))

    # 最大复制长度
    # 0 = 不限制
    g:oscyank_max_length = 0

    # 不显示复制成功提示
    g:oscyank_silent = 1

    # 不自动去除首尾空白
    g:oscyank_trim = 0


    # --------------------------------------------------------
    # 自动将 Vim 的 yank 内容发送到本地剪贴板
    # --------------------------------------------------------

    augroup OSCYankPost
        autocmd!
        autocmd TextYankPost * call OSCYankRegister('"')
    augroup END

endif

## complete
var options = {
    completor: { shuffleEqualPriority: true, postfixHighlight: true, noNewlineInCompletionEver: true },
    buffer: { enable: true, priority: 10, urlComplete: true, envComplete: true },
    abbrev: { enable: true, priority: 10 },
    lsp: { enable: true, priority: 10, maxCount: 5 },
    omnifunc: { enable: false, priority: 8, filetypes: ['python', 'javascript'] },
    vsnip: { enable: true, priority: 11 },
    vimscript: { enable: true, priority: 11 }
}
autocmd VimEnter * g:VimCompleteOptionsSet(options)

g:vimcomplete_tab_enable = 1
inoremap <buffer><expr> <tab>   g:VimCompleteTab() ?? "{rhs}"
inoremap <buffer><expr> <s-tab> g:VimCompleteSTab() ?? "{rhs}"

## Tree
nnoremap <leader>e :Fern . -drawer -toggle<CR>

## Search
