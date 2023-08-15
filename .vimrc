" Plugins
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'

call plug#end()

nnoremap \nt :NERDTreeToggle<CR>
nnoremap \ff :Files<CR>
nnoremap \be :BufExplorer<CR>

" Enable line numbers
set number

" Set the tab width to 4 spaces
set tabstop=4

" Use spaces instead of tabs
set expandtab

colorscheme habamax

" Set the background to dark (this affects color schemes)
set background=dark

" Enable syntax highlighting
syntax enable

" Always show the status line
set laststatus=2

" Hide unnecessary line below status eg. -- INSERT --
set noshowmode

" Status line
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'fileformat', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

