"plugins
"ack.vim
"command-t
"nerdtree
"syntastic
"ultisnips
"vim-commentary
"vim-vinegar
"vim-surround
"vim-repeat

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
set copyindent
set fileformats=unix
set visualbell           " don't beep
set noerrorbells         " don't beep
filetype on
filetype plugin on
set nobackup
set nowb
set noswapfile
set ignorecase
set smartcase
set updatetime=100

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

"highlight tabs
highlight SpecialKey ctermfg=1
set list
set listchars=tab:T>
nmap <leader>l :set invlist<cr>

" dark mode enabled?
if system("defaults read -g AppleInterfaceStyle") =~ '^Dark'
    colorscheme atom-dark-256 "xoria256
else
    colorscheme default
endif

execute pathogen#infect()

" Press F4 to toggle highlighting on/off, and show current value.
:noremap <F4> :set hlsearch! hlsearch?<CR>

"NERDTree config
let NERDTreeHijackNetrw = 0
nmap <leader>b :NERDTreeToggle<cr>

"commandT config
let g:CommandTFileScanner="git"
let g:CommandTWildIgnore=&wildignore . ",**/node_modules/*,**/vendor/*"

"syntastic config
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_php_checkers=['php', 'phpcs']
let g:syntastic_php_phpcs_args='--standard=PSR2 -n'

"/
"/ Ultisnips
"/
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Ack
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

" gitgutter
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)

set tags=.git/tags

" yank to clipboard
noremap <Leader>y "*y

" match xml and html tags
runtime macros/matchit.vim
