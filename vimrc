execute pathogen#infect()
syntax on
filetype on
filetype plugin on
filetype indent on

" Initialize vim plugins
call plug#begin('~/.vim/plugged')

" NERD tree will be loaded on the first invocation of NERDTreeToggle command
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'terryma/vim-multiple-cursors'
Plug 'thaerkh/vim-indentguides'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'k0kubun/vim-open-github'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'wincent/terminus'
Plug 'thaerkh/vim-workspace'
Plug 'ajh17/VimCompletesMe'
Plug 'gangleri/vim-toggle-relative-line-numbers'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-fugitive'

Plug 'JulesWang/css.vim'
Plug 'ap/vim-css-color'
Plug 'cakebaker/scss-syntax.vim'
" Plug 'shmargum/vim-sass-colors' blows shit up all the time

Plug 'heavenshell/vim-jsdoc'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mustache/vim-mustache-handlebars'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'

Plug 'elixir-editors/vim-elixir'
Plug 'slashmili/alchemist.vim'
call plug#end()

" START NERDTree stuff
map <C-\> :NERDTreeToggle<CR>
nmap ,r :NERDTreeFind<CR> 
nmap ,t :NERDTreeToggle<CR>
" END NERDTree stuff

nnoremap <leader>s :ToggleWorkspace<CR>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" change panels
nmap <leader>j <C-W>j<CR>
nmap <leader>k <C-W>k<CR>
nmap <leader>h <C-W>h<CR>
nmap <leader>l <C-W>l<CR>

" change tabs
nmap ,j :tabr<CR>
nmap ,k :tabl<CR>
nmap ,h :tabp<CR>
nmap ,l :tabn<CR>

nmap ,f :FZF<CR>
nmap ,n :ToggleNumRel<CR>

" Toggle workspace
nnoremap <leader>s :ToggleWorkspace<CR>
let g:workspace_session_directory=$HOME.'/.vim/sessions'

let NERDTreeNodeDelimiter = "\u00A0"
let g:user_emmet_leader_key=','
let g:mustache_abbreviations=1
let g:airline#extensions#tabline#formatter='unique_tail_improved'

let g:javascript_plugin_jsdoc = 1
let g:jsdoc_underscore_private=1
let g:jsdoc_enable_es6=1
let g:jsdoc_access_descriptions=2
let g:jsdoc_allow_input_prompt=1

:set number relativenumber
:set mouse=a
:set nolist
:set listchars=tab:»·,trail:·
:set cursorline
hi CursorLine cterm=NONE ctermbg=44 ctermfg=black
:set visualbell " no sounds
:set autoread " reload files changed outside of vim
:set scrolloff=10 " adds a buffer zone to the lines revealed when navigating the page edges
:set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
:set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set splitright "splits windows to right by default
set nobackup

" Tab configuration
set shiftwidth=2
set softtabstop=2
set expandtab
