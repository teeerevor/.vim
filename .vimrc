 set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 Bundle 'tpope/vim-rails'
 Bundle 'corntrace/bufexplorer'
 " vim-scripts repos
 " Bundle 'NERD_Tree-and-ack'
 Bundle 'The-NERD-tree'
 Bundle 'The-NERD-Commenter'
 Bundle 'ack.vim'

 Bundle 'minibufexpl.vim'


 " Bundle 'NERD_tree'
 " Bundle 'NERD_commenter.zip'
 " Bundle 'ack'
 " Bundle 'minibufexplorer'
 Bundle 'bufexplorer.zip'
 Bundle 'SuperTab'
 " non github repos
 Bundle 'git://git.wincent.com/command-t.git'
 " ...

 filetype plugin indent on     " required! 
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

let mapleader = ","

set t_Co=256

set smartcase
set grepprg=ack\ -H\ --nocolor\ --nogroup
set grepformat=%f:%l:%m

au BufNewFile,BufRead *.thor setfiletype ruby

command! -nargs=* -complete=file Ack call Ack(<q-args>)
" ,F to startup an ack search
map <leader>F :Ack<space>

" Command T settings
let g:CommandTMaxHeight=10

" NERD snippets
"let g:NERDSnippets_key="<S-space>"
"let g:NERDSnippets_key="<C-tab>"
let g:NERDSnippets_key="<F7><F7>"

" Minibuffer Explorer Settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'

syntax on

set wildmenu
set autoread
set nobackup
set nowritebackup
set smartindent
set gdefault
set cursorline
set nu  " Line numbers on
set nowrap  " Line wrapping off
set directory=/tmp

" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
set list
" Show $ at end of line and trailing space as ~
set lcs=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.

" don't use folder browser when adding to project listings
let g:proj_flags='imst'
" no menu, and no toolbar:
"set guioptions-=m
set guioptions-=T

set term=xterm-256color
" os x backspace fix
set backspace=indent,eol,start
"set t_kb
fixdel

" tabs -> spaces
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" turn mouse on
set mouse=a

" space = pagedown, - = pageup
noremap <Space> <PageDown>
noremap - <PageUp>

" remap'd keys
"map <Tab><Tab> <C-W>w
nnoremap <F5><F5> :set invhls hls?<CR>    " use f5f5 to toggle search hilight
nnoremap <F4><F4> :set invwrap wrap?<CR>  " use f4f4 to toggle wordwrap
nnoremap <F2><F2> :vsplit<CR>
nnoremap <F3><F3> <C-W>w
nmap <leader>s :source ~/.vimrc
nmap <leader>v :e ~/.vimrc
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <F6><F6> :TlistToggle<CR>

map <C-t> <Esc>:%s/[ ^I]*$//<CR>

set nohls
set incsearch
set showcmd
set nowrap
set hidden

filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
