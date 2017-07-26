" Vundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle bundle
Bundle 'gmarik/vundle'
Bundle 'rking/ag.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'mattn/emmet-vim'
Bundle 'vim-airline/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tomtom/tcomment_vim'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
" Haskell
Bundle 'neovimhaskell/haskell-vim'
" Elixr
Bundle 'elixir-lang/vim-elixir'
Bundle 'slashmili/alchemist.vim'
" Elm
Bundle 'elmcast/elm-vim'
" Js
Bundle 'pangloss/vim-javascript'
Bundle 'mxw/vim-jsx'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'leshill/vim-json'
Bundle 'stephpy/vim-yaml'
" Ruby
Bundle 'tmhedberg/matchit'
Bundle 'vim-scripts/ruby-matchit'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-rake'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-surround'
Bundle 'kana/vim-textobj-user'
Bundle 'tpope/vim-unimpaired'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'itmammoth/run-rspec.vim'
Bundle 't9md/vim-ruby-xmpfilter'

" Misc
Bundle 'junegunn/vim-easy-align'

" macro for matchit plugin
runtime macros/matchit.vim

" use codeshcool theme
:set t_Co=256
if has("gui_running")
 colorscheme codeschool
 set guifont=Monaco:h12
endif

" execute pathogen#infect()
" Helptags

syntax on
filetype plugin indent on
autocmd vimenter * NERDTree
nnoremap <leader>n :NERDTree ~/Documents/code<CR>
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
