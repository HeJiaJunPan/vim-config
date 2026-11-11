一、vim-easymotion用法

EasyMotion 默认使用双 `<Leader>` 前缀。假设你的 Leader 是反斜杠 `\`，下面的操作就是 `\\w`、`\\f` 等。

| 快捷键          | 字母标签显示位置                                             | 含义                                                   |
| --------------- | ------------------------------------------------------------ | ------------------------------------------------------ |
| `\\w`           | 标签字母出现在当前行每个单词的首字母上                       | 输入标签字母后，光标跳到对应单词的开头                 |
| `\\f{目标字符}` | 假设目标字符是`o`，标签字母出现在带目标字符的位置上，仅向下搜索和显示字母标签 | 先输入 `\\f`，再输入目标字符 `o`，随后按显示的标签跳转 |
| `\\s{目标字符}` | 假设目标字符是`o`，标签字母出现在带目标字符的位置上，向上和向下搜索和显示字母标签 | 先输入 `\\s`，再输入目标字符 `o`，随后按显示的标签跳转 |

二、Fuzzbox
`fuzzbox.vim`默认映射如下，可通过`g:fuzzbox_mappings = 0`关闭默认映射
```vim
" Normal mode
nnoremap <silent> <leader>fb :FuzzyBuffers<CR>
nnoremap <silent> <leader>ff :FuzzyFiles<CR>
nnoremap <silent> <leader>fg :FuzzyGrep<CR>
nnoremap <silent> <leader>fh :FuzzyHelp<CR>
nnoremap <silent> <leader>fi :FuzzyInBuffer<CR>
nnoremap <silent> <leader>fr :FuzzyMru<CR>
nnoremap <silent> <leader>fp :FuzzyPrevious<CR>
nnoremap <silent> <leader>fq :FuzzyQuickfix<CR>
" Visual mode
xnoremap <silent> <leader>ff <Cmd>FuzzyFiles<CR>
xnoremap <silent> <leader>fg <Cmd>FuzzyGrep<CR>
xnoremap <silent> <leader>fi <Cmd>FuzzyInBuffer<CR>
```
