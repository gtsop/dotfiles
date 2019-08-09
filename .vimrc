execute pathogen#infect()
set nocp
syntax on
set number

let mapleader=","

"Full file path"
set statusline+=%F
set laststatus=2

"Identation"
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

"Markdown support"
let g:vim_markdown_folding_disabled = 1

autocmd BufNewFile,BufRead *.json set ft=javascript

"Trim whitespace on save"
autocmd BufWritePre * %s/\s\+$//e

"Supposedly helps with cursor copying"
se mouse+=a

"Supposedly helps with the file searching"
set path+=**
set wildmode=longest,list,full
set wildmenu

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 3
let g:netrw_altv = 1
let g:netrw_winsize = 25

set backspace=indent,eol,start

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

"https://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/"
""
" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

set list
set listchars=tab:>-,trail:~

map <leader>l :set list!<cr>
