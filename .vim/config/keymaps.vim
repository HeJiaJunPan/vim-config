vim9script

g:mapleader = " "

nnoremap \ ,
nnoremap J j
nnoremap K k
inoremap jk <ESC>
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <leader>/ :nohlsearch<CR>

nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>th :tabp<cr>
nnoremap <leader>tl :tabn<cr>

# 移动分割窗口
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

# 正常模式下 alt+j,k,h,l 调整分割窗口大小
nnoremap <M-j> :resize +5<cr>
nnoremap <M-k> :resize -5<cr>
nnoremap <M-h> :vertical resize -5<cr>
nnoremap <M-l> :vertical resize +5<cr>

# 打印当前时间
nnoremap <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>

# 复制当前文件/路径到剪贴板
nnoremap ,fn :let @*=substitute(expand("%"), "/", "\\", "g")<CR>
nnoremap ,fp :let @*=substitute(expand("%:p"), "/", "\\", "g")<CR>

# 删除空行
nnoremap <F2> :g/^\s*$/d<CR>

# 删除空格
map <F3> :%s/\s\+$//<CR>

# 文件树
nnoremap <leader>e :NERDTreeToggle<CR>

# 模糊搜索
nnoremap <leader>f :Files<CR>

# 项目搜索
nnoremap <leader>g :Rg<CR>

# buffer
nnoremap <leader>b :Buffers<CR>

# 保存
nnoremap <leader>w :w<CR>

# 自动格式化
nnoremap <leader>F :Autoformat<CR>

# diagnostics
nnoremap <leader>d :LspDiag show<CR>
