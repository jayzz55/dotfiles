set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/nerdtree
call vundle#begin()

" Mac OS X clipboard sharing
set clipboard=unnamed

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Vim plugins
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tomtom/tcomment_vim'
" Haskell
Plugin 'neovimhaskell/haskell-vim'
" Elixr
Plugin 'elixir-lang/vim-elixir'
Plugin 'slashmili/alchemist.vim'
" Elm
Plugin 'elmcast/elm-vim'
" Js
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'chemzqm/vim-jsx-improve'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'leshill/vim-json'
Plugin 'stephpy/vim-yaml'
" Ruby
Plugin 'tmhedberg/matchit'
Plugin 'vim-scripts/ruby-matchit'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rake'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-surround'
Plugin 'kana/vim-textobj-user'
Plugin 'tpope/vim-unimpaired'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'itmammoth/run-rspec.vim'
Plugin 't9md/vim-ruby-xmpfilter'

" Misc
Plugin 'junegunn/vim-easy-align'
Plugin 'osyo-manga/vim-over'
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
nnoremap <leader>n :NERDTree ~/Documents/code<CR>
map <leader>t :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<cr>
map <leader>m :ElmMake<cr>
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

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

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

call vundle#end()

