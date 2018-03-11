syntax enable
set background=dark
colorscheme slate
set nu

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
" git interface
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" filesystem
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-scripts/winmanager'
" html 
" isnowfy on compatible with python not python3
Plugin 'isnowfy/python-vim-instant-markdown'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'suan/vim-instant-markdown'
Plugin 'nelstrom/vim-markdown-preview'

"python sytax checker
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/Pydiction'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
"Plugin 'Lokaltog/vim-powerline'
Plugin 'Yggdroot/indentLine'

" auto-completion-stuff
"Plugin 'klen/python-mode'
Plugin 'Valloric/YouCompleteMe'
Plugin 'klen/rope-vim'
"Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'

" code folding
Plugin 'tmhedberg/SimpylFold'

" Colors!!!
Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'

Plugin 'vim-scripts/taglist.vim'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
let g:SimpylFold_docstring_preview=1
" To ignore plugin indent changes, instead use:
"filetype plugin on
"autocomplete
let g:ycm_autoclose_preview_window_after_complation=1
"
"custom keys
let mapleader=" "
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"
call togglebg#map("<F5>")

let NERDTreeIgnore=['\.pyc$','\~$']  "ignore files in nerdtree

" I don't like swap files
set noswapfile



" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"--------------NERDTree Config--------------"
nmap <F2> :NERDTreeMirror<CR>
nmap <F2> :NERDTreeToggle<CR>
let NERDTreeDirArrows=0
"--------------end--------------------------"

"--------------split navigations------------"
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"--------------Enable folding---------------"
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

" YouCompleteMe
let g:ycm_server_python_interpreter='python'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'

"--------------Python-----------------------"
syntax on
set autoindent
set mouse=a
set backspace=2
set smartindent
set tabstop=4
set softtabstop=4
set expandtab
set ruler
set cmdheight=1
"set shortmess=atI
"set list
"set listchars=tab:>-,trail:-
set laststatus=2
"set paste
au BufNewFile,BufRead *.py set nonumber

"----------------ctags----------------------"
set tags=tags
map <F9> :TlistToggle<CR>
let Tlist_Use_Right_Window=1
let Tlist_WinWidth=25
set autochdir

"---------------winmanager------------------"
let g:winManagerWindowLayout="NERDTree|TagList"
let g:winManagerWidth=30
nmap <silent> <F8> :WMToggle<cr>
let g:AutoOpenWinManager=1
"let Tlist_Exit_OnlyWindow=1
let g:persistentBehaviour=0 "ru guo suo you bian ji wenjian dou guan bi le ,tuchu vim"

"--------------airline----------------------"

