set number
filetype plugin indent on
set background=dark
set t_Co=256
syntax on
set cursorline
set title

set laststatus=2
set statusline+=\ [Line:
set statusline+=\ %l
set statusline+=/
set statusline+=%L
set statusline+=\ Column:
set statusline+=\ %v]
set statusline+=%=
set statusline+=\ [PATH:
set statusline+=\ %F]
set statusline+=\ |

set nobackup
set noswapfile
set noundofile

set backspace=2
set backspace=indent,eol,start

:autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'lervag/vimtex'

call plug#end()

autocmd vimenter * ++nested colorscheme gruvbox

vnoremap < <gv
vnoremap > >gv
