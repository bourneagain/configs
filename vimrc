set nocompatible              " required                                                   
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
call vundle#begin('~/vundle')
Plugin 'taglist.vim'
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'flazz/vim-colorschemes'
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
call vundle#end()            " required
"filetype plugin indent on    " required
filetype plugin on 
map <C-n> :NERDTreeToggle<CR>
map <C-o> :TlistOpen <CR>
map <C-h> :TlistHighlightTag<CR>

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
"set laststatus=2
"set tabstop=4
"set softtabstop=0 expandtab


"
" " Use 256 colours (Use this setting only if your terminal supports 256
" colours)
set t_Co=256

" Enable folding
set foldmethod=indent
set foldlevel=99

nnoremap <space> za
" show line numbers
set number

" indent when moving to the next line while writing code
"set autoindent

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=2

" show a visual line under the cursor's current line
"set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1
sy on
colorscheme desert

" Uncomment the following to have Vim jump to the last position when
" " reopening a file
"
if has("autocmd")
      au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set nohlsearch


" to highlight indentlines and tabs
let g:indentLine_color_term = 100
let g:indentLine_char = ' '

let g:indentLine_concealcursor = 'vc' 
let g:indentLine_conceallevel = 1
set noet ci pi sts=0 sw=4 ts=2
set autoindent

set mouse=nicr

" for highlighting characters once over 80 character limit
" for mouse scroll in iterm



"
" for vimdiff shit color
highlight! link DiffText ToDo
colorscheme delek

function! TrimWhiteSpace()
    %s/\s\+$//e
    endfunction
    autocmd BufWritePre     *.py :call TrimWhiteSpace()

"set tabstop=8
"set softtabstop=8
"set shiftwidth=8
"set noexpandtab
"
set ts=2 sw=2 sts=2 et
set nowrap
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="80,".join(range(8888,9999),",")


" set highlight search color
"
"
" Tab navigation like Firefox.
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>
highlight Search ctermfg=yellow ctermbg=black
