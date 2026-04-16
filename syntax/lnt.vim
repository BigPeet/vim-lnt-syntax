" File: syntax/lnt.vim
" Author: Peter Wolf <pwolf2310@gmail.com>
" Description: Vim syntax file for PC-lint Plus's lnt files
" Last Modified: November 04, 2025

" quit when a syntax file was already loaded
if exists('b:current_syntax')
  finish
endif

" Load CPP syntax as a base for LNT syntax
runtime syntax/cpp.vim
unlet b:current_syntax

" add single-quoted strings (handles escaped quotes)
syn region lntString start=+'+ skip=+\\\\\|\\'+ end=+'+ keepend contains=@Spell
syn match lntVariable "\$[a-zA-Z_][a-zA-Z0-9_]*"
syn match lntOption "^\s*[-+][a-zA-Z0-9_]\+"
syn keyword lntKeyword echo persistent
syn keyword lntMetricTarget class function file project translation_unit

" Highlight
hi def link lntString String
hi def link lntVariable Identifier
hi def link lntOption Special
hi def link lntKeyword Keyword
hi def link lntMetricTarget Structure

" Support for NERD commenter plugin
if exists('loaded_nerd_comments')
  if !exists('g:NERDCustomDelimiters')
      let g:NERDCustomDelimiters = {}
  endif
  "  add delimiters for comments
  let g:NERDCustomDelimiters['lnt'] = { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/' }
endif

let b:current_syntax = 'lnt'
