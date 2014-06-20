""set colorscheme
set background=dark
"colorscheme solarized
"colorscheme dark_ligt_blue
"colorscheme dark_purple
"colorscheme anotherdark
colorscheme ChocolateLiquor

set nu

"set tab to 4 blanks
set ts=4 
set expandtab
"set auto indent
set shiftwidth=4

"set cc=10,20,30
set cc=-20,+10,120  "表示把 textwidth-20、textwidth+10、第120列，进行高亮。
hi colorcolumn guibg=lightgreen "定义高亮列为亮绿色。

"set for vimwiki  2014-06-08
set nocompatible

" 打开语法高亮
syntax enable
syntax on

" 打开对文件类型插件的支持
filetype indent on
filetype plugin on
filetype plugin indent on

" ######### VimWiki 写作助手 ######### "
" 使用鼠标映射
let g:vimwiki_use_mouse = 1

" 不要将驼峰式词组作为 Wiki 词条
let g:vimwiki_camel_case = 0

let g:vimwiki_list = [{
\ 'path': '~/PJ/vimwiki',
\ 'path_html': '~/PJ/vimwiki/',
\ 'auto_export': 1,
\}]
"Comment
"path：指定你存放wiki源文件的目录
"path_html：指定编译得到的HTML文件放到哪个目录
"auto_export：每当保存wiki源文件时自动编译，关闭设为0
 
"shortcut
map <S-F4> :VimwikiAll2HTML<cr>  "convert to HTML
map <F4> :Vimwiki2HTML<cr>

"Code Highlighting
let wiki = {}
let wiki.path = '~/PJ/vimwiki/'
let wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}
