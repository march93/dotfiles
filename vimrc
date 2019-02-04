syntax on
filetype on
filetype plugin on
filetype indent on

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Initialize vim plugins
call plug#begin('~/.vim/plugged')

" NERD tree will be loaded on the first invocation of NERDTreeToggle command
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'terryma/vim-multiple-cursors'
Plug 'thaerkh/vim-indentguides'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'k0kubun/vim-open-github'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'wincent/terminus'
Plug 'thaerkh/vim-workspace'
Plug 'ajh17/VimCompletesMe'
Plug 'gangleri/vim-toggle-relative-line-numbers'
Plug 'MattesGroeger/vim-bookmarks'

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

" change panels
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" change tabs
nmap <Space>j :tabr<CR>
nmap <Space>k :tabl<CR>
nmap <Space>h :tabp<CR>
nmap <Space>l :tabn<CR>

nmap ,f :FZF<CR>

" Toggles between relative and absolute line numbers
nmap ,n :ToggleNumRel<CR> 

" Toggle workspace
nnoremap <leader>s :ToggleWorkspace<CR>
let g:workspace_session_directory=$HOME.'/.vim/sessions'

let NERDTreeNodeDelimiter = "\u00A0"
let NERDTreeShowHidden=1
let g:user_emmet_leader_key=','
let g:mustache_abbreviations=1
let g:airline#extensions#tabline#formatter='unique_tail_improved'

if executable('rg')
  let g:ackprg = 'rg --vimgrep --no-heading'
  map <Space>f :Ack!<Space>--smart-case<Space>
endif

nmap <Space>p "*p<CR> " Pastes the system clipboard into vim
vmap <Space>c "*y<CR> " Copies selected text to the system clipboard from vim

let g:javascript_plugin_jsdoc = 1
let g:jsdoc_underscore_private=1
let g:jsdoc_enable_es6=1
let g:jsdoc_access_descriptions=2
let g:jsdoc_allow_input_prompt=1

set number relativenumber
set mouse=a " gives us happy mouse scrolling and clicking
set nolist
set listchars=tab:»·,trail:·
set cursorline
hi CursorLine cterm=NONE ctermbg=44 ctermfg=black
set visualbell " no sounds
set autoread " reload files changed outside of vim
set splitright "splits windows to right by default
set scrolloff=10 " adds a buffer zone to the lines revealed when navigating the page edges
set backupdir=~/.vim/tmp/backups//
set directory=~/.vim/tmp/swp//
set nobackup

" Tab configuration
set shiftwidth=2
set softtabstop=2
set expandtab
set backspace=2
