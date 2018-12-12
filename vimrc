set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
call vundle#begin('~/vundle')


"""""""""""""""""""""""""""""""""""""""""""""""""""
" FOR OPENING LAST USED FILES IN LIST
" http://www.vim.org/scripts/script.php?script_id=521
map <C-m> :MRU<space>
" changing the file name color
highlight link MRUFileName LineNr



"""""""""""""""""""""""""""""""""""""""""""""""""""
" INSTALLING NERD TREE
" after doing this
" mkdir -p ~/.vim/autoload ~/.vim/bundle && \
" curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
execute pathogen#infect()


"""""""""""""""""""""""""""""""""""""""""""""""""""
" INSTALLING TAG LIST TO VIEW FILE STRUCT
" http://www.vim.org/scripts/script.php?script_id=273
map <C-l> :TlistOpen <CR>
map <C-h> :TlistHighlightTag<CR>


""""""""""""""""""""""""""""""""""""""""""""
" Changing the line numbers color
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

"""""""""""""""""""""""""""""""""""""""""""""""
" Common commands
set nowrap
syntax enable
set number
set tabstop=2 shiftwidth=2 expandtab 
set si
set mouse=nicr
set nohlsearch
colorscheme delek 
" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=2
map <C-y> :set foldmethod=indent
"map <C-y> :setlocal spell spelllang=en_us
map <C-p> :set paste
map <C-a> :set autoindent 
map <C-c> :w !diff --side-by-side % -
map <C-d> :setlocal spell spelllang=en_us
set autoindent 

"""""""""""""""""""""""""""""""""""""""""""""""""""
" highlight only after 80 columns
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=0 guibg=#00000
let &colorcolumn="80,".join(range(8888,9999),",")
set t_Co=256
highlight ColorColumn ctermbg=236
set colorcolumn=80

" To highlight space trailing
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
Plugin 'Yggdroot/indentLine'
let g:indentLine_color_term = 142
let g:indentLine_char = 'c'
" for full file name in status bar
set statusline+=%F
set paste


""""""""""""""""""
" Highlight trainling white space
Plugin 'ntpeters/vim-better-whitespace'
""""""""""""""""""""""""""""""""""""""""
""" for go  language

let g:go_disable_autoinstall = 0

" Highlight
let g:go_highlight_functions = 1  
let g:go_highlight_methods = 1  
let g:go_highlight_structs = 1  
let g:go_highlight_operators = 1  
let g:go_highlight_build_constraints = 1  

"To set fold on python code
" set foldmethod=indent

