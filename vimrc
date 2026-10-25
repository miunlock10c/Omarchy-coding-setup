"---disable compatibility with vi---
set nocompatible

filetype on

" enable plugins for detected filetype-------
filetype plugin on

"---add numbers to each line on the left-hand side---
set number

"---highlight cursorline underneath the cursor horizontally ---
"set cursorline
"hi Cursorline cterm=NONE gui=NONE ctermbg=236 guibg=#303030

"---Highlight cursorline underneath the cursor vertically.
"set cursorcolumn

"--------use spaces instead of tabs------------
"set expandtab

"---dont save backup files---
set nobackup

"-------dont overscroll-------
set scrolloff=10

"----dont wrap lines----
set nowrap

"---Enable auto completion menu after pressing TAB---
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

"---Enable folding---
augroup filetype_vim
        autocmd!
        autocmd Filetype vim setlocal foldmethod=marker
augroup END



"--- Syntax highlighting ---
syntax on

"--- Auto indentation ---
filetype indent on

"--- Auto brace completion ---
inoremap ' ''<left>
inoremap " ""<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap jj <esc>
nnoremap <F3> :NERDTreeToggle<cr>
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']
" PLUGINS ----------------------
call plug#begin('~/.vim/plugged')
Plug 'dense-alaysis/ale'
Plug 'preservim/nerdtree'
call plug#end()
"}}}
