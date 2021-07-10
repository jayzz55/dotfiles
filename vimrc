set nocompatible              " be iMproved, required
filetype off                  " required

:set nobomb

" set the runtime path to include Vundle and initialize
let s:editor_root=expand("~/.vim")
set rtp+=~/.vim/bundle/Vundle.vim
" set rtp+=~/.vim/bundle/nerdtree
set nofoldenable    " disable folding

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(s:editor_root . '/bundle')

" Mac OS X clipboard sharing
set clipboard=unnamed

" let Vundle manage Vundle, required
Plug 'VundleVim/Vundle.vim'

" Vim plugins
Plug 'jremmen/vim-ripgrep'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'terryma/vim-multiple-cursors'
Plug 'tomtom/tcomment_vim'

" Syntax Highlighter
Plug 'sheerun/vim-polyglot'

" Elixr
Plug 'elixir-editors/vim-elixir'
Plug 'mhinz/vim-mix-format'
Plug 'slashmili/alchemist.vim'
Plug 'amiralies/coc-elixir', {'do': 'yarn install && yarn prepack'}

" Elm
Plug 'elmcast/elm-vim'

" Js
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'leshill/vim-json'
Plug 'stephpy/vim-yaml'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'jparise/vim-graphql'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Ruby
Plug 'tmhedberg/matchit'
Plug 'vim-scripts/ruby-matchit'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rake'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-surround'
Plug 'kana/vim-textobj-user'
Plug 'tpope/vim-unimpaired'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'itmammoth/run-rspec.vim'
Plug 't9md/vim-ruby-xmpfilter'
" Html tag
Plug 'alvan/vim-closetag'

" Misc
Plug 'junegunn/vim-easy-align'
Plug 'osyo-manga/vim-over'
" Activate with :OverCommandLine

" macro for matchit plugin
runtime macros/matchit.vim

" use codeshcool theme
:set t_Co=256
if has("gui_running")
 colorscheme codeschool
 set guifont=Monaco:h12
endif

syntax on
filetype plugin indent on
autocmd vimenter * NERDTree
" nnoremap <leader>n :NERDTree ~/Documents/code<CR>
map <leader>t :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<cr>
" map <leader>m :ElmMake<cr>

set runtimepath^=~/.vim/bundle/ctrlp.vim
:set expandtab
:set tabstop=2
:set shiftwidth=2
:set number
:set laststatus=2
:set incsearch
:set clipboard=unnamed
set runtimepath^=~/.vim/bundle/ag
set noswapfile
syntax on
filetype plugin indent on

let g:elm_format_autosave = 1
let g:jsx_ext_required = 0
let g:javascript_plugin_jsdoc = 1

" * run-rspec.vim Key Mappings
nnoremap <leader>r :RunSpec<CR>
nnoremap <leader>l :RunSpecLine<CR>
nnoremap <leader>e :RunSpecLastRun<CR>
nnoremap <leader>cr :RunSpecCloseResult<CR>

" * Ruby execution in Vim mapping
:map <leader>rr :!ruby %<cr>

nmap <leader>lr <Plug>(xmpfilter-run)
xmap <leader>lr <Plug>(xmpfilter-run)
imap <leader>lr <Plug>(xmpfilter-run)
nmap <leader>lm <Plug>(xmpfilter-mark)
xmap <leader>lm <Plug>(xmpfilter-mark)
imap <leader>lm <Plug>(xmpfilter-mark)

" * run-rspec.vim Key Mappings
nnoremap <leader>s :OverCommandLine<CR>

" vim-closetag
let g:closetag_filenames = "*.html,*.xhtml,*.js,*.erb,*.jsx"

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

" add ts-server in coc
let g:coc_global_extensions = [ 'coc-tsserver', 'coc-elixir' ]

" automatically format elixir code on save
let g:mix_format_on_save = 1

" enable python syntax highlighting
let g:python_highlight_all = 1

" * vim-easy-align mapping
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" try these commands:
"   vipga=
  "   visual-select inner paragraph
  "   Start EasyAlign command (ga)
  "   Align around =
"   gaip=
  "   Start EasyAlign command (ga) for inner paragraph
  "   Align around =

set backspace=indent,eol,start

call plug#end()

