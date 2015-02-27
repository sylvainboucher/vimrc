set encoding=utf-8
set nowrap
set number
syntax on
set nocompatible
set tabstop=4
set shiftwidth=4
set expandtab
set ruler
set incsearch
set autoindent
set fileformats=unix,dos
set comments=sr:/*,mb:*,ex:*/
syntax on
filetype on
filetype plugin on
"shortcut to check for php parsing errors
:autocmd FileType php noremap <C-L> :w!<CR>:!/usr/bin/php -l %<CR>
set nobackup
set nowb
set noswapfile
set omnifunc=phpcomplete#CompletePHP
"highlight right column
highlight ColorColumn ctermbg=4
set colorcolumn=80
"highlight whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
:nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
execute pathogen#infect()
au BufNewFile,BufRead *.less set filetype=less
au BufNewFile,BufRead *.md set filetype=markdown
" Press F4 to toggle highlighting on/off, and show current value.
:noremap <F4> :set hlsearch! hlsearch?<CR>
set exrc
