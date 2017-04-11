set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
call vundle#begin('~/vundle')


"""""""""""""""""""""""""""""""""""""""""""""""
" Common commands
set nowrap
syntax enable
set number
set paste
set tabstop=2 shiftwidth=2 expandtab
set si
set mouse=nicr
set nohlsearch
colorscheme delek
" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=2
map <C-y> :setlocal spell spelllang=en_us
set autoindent

" To highlight space trailing
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

"""""""""""""""""""""""""""""""""""""""""""""""""""
" FOR OPENING LAST USED FILES IN LIST
" http://www.vim.org/scripts/script.php?script_id=521
map <C-m> :MRU<space>
" changing the file name color
highlight link MRUFileName LineNr


"""""""""""""""""""""""""""""""""""""""""""""""""""
" highlight only after 80 columns
"let &colorcolumn=join(range(81,999),",")
"highlight ColorColumn ctermbg=0 guibg=#00000
"let &colorcolumn="80,".join(range(8888,9999),",")
set t_Co=256
highlight ColorColumn ctermbg=236
set colorcolumn=80

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
