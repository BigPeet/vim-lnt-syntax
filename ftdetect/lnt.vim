" File: lnt.vim
" Author: Peter Wolf <pwolf2310@gmail.com>
" Description: Detect PC-lint Plus's lnt files
" Last Modified: November 04, 2025

" Define .lnt files as lnt
autocmd BufNewFile,BufRead *.lnt setl filetype=lnt
