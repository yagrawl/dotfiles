" Plugins
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'dense-analysis/ale'

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

" Ale configurations

" Enable linting by default
let g:ale_enabled = 1

" Only lint while in normal mode
let g:ale_lint_on_text_changed = 'normal'

" Automatically lint when leaving insert mode
let g:ale_lint_on_insert_leave = 1

" Enable signs showing in the gutter to reduce interruptive visuals
let g:ale_set_signs = 1

" Only run linters that are explicitly listed below
let g:ale_linters_explicit = 1

" Disable highlighting as it interferes with readability and accessibility
let g:ale_set_highlights = 0
let g:ale_linters = {}
let g:ale_fixers = {}

" Git-gutter reload
let g:gitgutter_updatetime = 10
