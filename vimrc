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
Bundle 'neovimhaskell/haskell-vim'
Bundle 'tmhedberg/matchit'
Bundle 'vim-scripts/ruby-matchit'
Bundle 'tomtom/tcomment_vim'
Bundle 'vim-airline/vim-airline'
Bundle 'tpope/vim-bundler'
Bundle 'elixir-lang/vim-elixir'
Bundle 'tpope/vim-fugitive'
Bundle 'pangloss/vim-javascript'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-surround'
Bundle 'kana/vim-textobj-user'
Bundle 'tpope/vim-unimpaired'
Bundle 'nelstrom/vim-textobj-rubyblock'

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
