function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

call plug#begin('~/.config/nvim/plugged')
  " Autocomplete
  Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
  Plug 'zchee/deoplete-jedi'

  " Improve edition
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'jiangmiao/auto-pairs'
  Plug 'mhinz/vim-grepper'

  " Linters
  Plug 'neomake/neomake'

  " FZF
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

  " Theme
  Plug 'ronny/birds-of-paradise.vim'
  Plug 'morhetz/gruvbox'

  " Status bar and other stuff
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  Plug 'vim-airline/vim-airline'

call plug#end()

let g:python3_host_prog = '/home/matheus/.config/nvim/env/bin/python3'

" Neomake (linters)
autocmd! BufWritePost,BufWinEnter * Neomake
let g:neomake_python_enabled_makers = ['flake8']
let g:neomake_open_list=2
let g:neomake_list_heigh=5

" Deoplete (autocompleters)
let g:deoplete#enable_at_startup=1
let g:deoplete#enable_at_startup=1

" FZF
map <C-p> :FZF<CR>

" Theme
syn on
set background=dark
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox
let g:airline_powerline_fonts=1
let g:airline_theme='gruvbox'

au VimEnter * ToggleStripWhitespaceOnSave

set number

filetype plugin indent on
" tabstop
set ts=4
" shiftwidth
set sw=4
" set smarttab
set expandtab
set shiftround
