set hlsearch
set number
set nowrap
colorscheme desert 
set laststatus=2
set viminfo='10,\"100,:20,%,n~/.viminfo
syn on
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

execute pathogen#infect()
filetype plugin indent on

if &diff
	colorscheme evening
endif
au VimEnter * if &diff | execute 'windo set wrap' | endif
:command W set wrap 
:command NW set nowrap 
:command E set noignorecase
:command NN set nonumber
:command NU set number
:command HS set hlsearch
:command NHS set nohlsearch
