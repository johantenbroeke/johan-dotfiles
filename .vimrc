set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
" Plugin 'davidhalter/jedi-vim'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
Plugin 'neoclide/coc.nvim'

let g:coc_global_extensions = ['coc-phpls', 'coc-pyright', 'coc-python', 'coc-highlight']
nmap <silent> <F9> <Plug>(coc-definition)

set tags=tags

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" au BufNewFile,BufRead *.py

set tabstop=4
set softtabstop=4
set shiftwidth=4
" set textwidth=79
set expandtab
set autoindent
set fileformat=unix

" color koehler
hi Directory guifg=#efefef ctermfg=grey
let mapleader=" "
nmap <Leader>5 :NERDTreeToggle<CR>
nmap <Leader>8 :TagbarToggle<CR>

nmap <Leader>2 :set rnu! nu!<CR>
nmap <Leader>3 :set list!<CR>

let NERDTreeNodeDelimiter = "\t"
let NERDTreeIgnore = ['\.pyc$', '\~$']
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_i") | NERDTree | endif
autocmd FileType qf wincmd J

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

inoremap <expr> <c-j> pumvisible() ? "\<C-n>" : coc#refresh()
inoremap <expr> <c-k> pumvisible() ? "\<C-p>" : coc#refresh()
set lcs+=space:·

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
