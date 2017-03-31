"Note:
"This .vimrc file is a copy
"Put this file in the same homedir with directory .vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Avoid a name conflict with L9
Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line






" Personalized VIM

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
"set runtimepath^=~/.vim/bundle/ctrlp.vim

" Pathogen
filetype plugin indent on

" Plugin
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Auto close Brackets
noremap {<CR> {<C-o>o}<C-o>O
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
inoremap        (  ()<Left>
inoremap [      []<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap <expr> " strpart(getline("."), col(".")-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"


" Syntax
syntax on
set number
set ai
set autoindent
set copyindent
set errorbells
set visualbell
set colorcolumn=80
set tabstop=2
set bg=dark
colorscheme delek
set ruler
set hlsearch
set cursorcolumn
set cursorline
set hidden
set incsearch
set nocompatible
set nohidden
set wrap
set sm
set ignorecase
set smarttab
" set splitbelow
set splitright
set wildmenu
set splitbelow
set splitright
set wildmode     =list:longest,full
set mouse=a
set showmatch


" Lets
let &colorcolumn             ="80,100"
let g:clipbrdDefaultReg      ='+'
let mapleader = "\<Space>"

" Airline
let g:airline#extensions#branch#enabled   =1
let g:airline#extensions#hunks#enabled    =1
let g:airline_detect_paste                =1
let g:airline_powerline_fonts             =1
let g:airline_right_sep                   =''
let g:airline_theme                       ='xtermlight'
let g:airline_left_sep='>'
let g:airline_detect_modified=1
let g:airline_detect_spell=1
let g:airline#extensions#ctrlp#color_template = 'xtermlight'

" SmartTabLine
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


" Special Syntax Highlighting
 let g:niji_matching_filetypes = ['racket'] " Racket
 autocmd BufNewFile,BufRead *.json set ft=javascript " JSON using JS rules

 " Autotrim whitespace
 autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

 " Tab options
autocmd FileType * set tabstop=2|set shiftwidth=2|set expandtab
 autocmd FileType cpp set tabstop=8|set shiftwidth=8|set softtabstop=8|set noexpandtab
 autocmd FileType elm set tabstop=4|set shiftwidth=4|set softtabstop=4|set expandtab
autocmd FileType html set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab

" Autocommands
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces

" Colors
hi clear SignColumn
hi ColorColumn ctermbg=3
hi CursorColumn ctermbg=26
hi CursorLine ctermbg=119
hi matchParen ctermbg=5
