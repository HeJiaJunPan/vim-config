vim9script

plug#begin('~/.vim/plugged')

# LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}

# Markdown
Plug 'plasticboy/vim-markdown'

Plug 'scrooloose/nerdcommenter'

Plug 'liuchengxu/space-vim-dark'

Plug 'tpope/vim-surround'

Plug 'easymotion/vim-easymotion'
#Plug 'monkoose/vim9-stargate'

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
