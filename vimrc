set number
let loaded_matchparen = 1 
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
	colorscheme desert 
endif
au VimEnter * if &diff | execute 'windo set wrap' | endif
:command W set wrap 
:command NW set nowrap 
:command E set noignorecase
:command NN set nonumber
:command NU set number
:command HS set hlsearch
:command NHS set nohlsearch
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red
