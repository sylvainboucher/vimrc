"plugins
"ack.vim
"command-t
"nerdtree
"nerdtree-ack
"syntastic
"vim-repeat
"vim-surround
"vim-vinegar
"vim-multiple-cursors

set encoding=utf-8
set nowrap
set number
syntax on
colorscheme atom-dark-256 "xoria256
set nocompatible
set tabstop=4
set shiftwidth=4
set expandtab
set ruler
set incsearch
set autoindent
set copyindent
set fileformats=unix
set visualbell           " don't beep
set noerrorbells         " don't beep
filetype on
filetype plugin on
set nobackup
set nowb
set noswapfile

"highlight right column
highlight ColorColumn ctermbg=232
set colorcolumn=80
"
"highlight and remove whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
:nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

execute pathogen#infect()

" Press F4 to toggle highlighting on/off, and show current value.
:noremap <F4> :set hlsearch! hlsearch?<CR>

"NERDTree config
let NERDTreeHijackNetrw = 0
nmap <leader>b :NERDTreeToggle<cr>

"commandT config
let g:CommandTWildIgnore=&wildignore . ",**/node_modules/*,**/vendor/*"

"syntastic config
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
