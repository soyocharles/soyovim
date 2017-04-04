set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required



"general configure
set t_Co=256
set number
map <C-K> :bnext<CR>
map <C-J> :bprev<CR>

"NERDTree configure
let NERDTreeShowHidden = 1
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc()== 0 && !exists("s:std_in") | NERDTree | endif



"Syntacstic configure
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"vim-airline configure
set laststatus=2
let g:airline_powerline_font=1
let g:airline_left_sep='>'
let g:airline_theme='luna'
let g:airline_detect_spell=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"vim-colors-solarized configure
let g:solarized_termcolors=32
let g:solarized_termtrans =1
let g:solarized_degrade   =0
let g:solarized_bold      =1
let g:solarized_underline =1
let g:solarized_italic    =1
let g:solarized_contrast  ="normal"
let g:solarized_visibility="normal"
syntax enable
set background=dark
colorscheme solarized

