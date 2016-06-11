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
