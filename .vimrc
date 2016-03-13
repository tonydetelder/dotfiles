set nocompatible nobackup noswapfile noerrorbells
set fileformats=unix,mac,dos " support all newline formats
set encoding=utf8

filetype on
filetype plugin on
syntax enable
set showmatch " Show matching brackets
set number
set background=dark
colorscheme solarized

set ai si " smart auto indent
set expandtab shiftwidth=2 tabstop=2 softtabstop=2 " spaces for tabs

set hlsearch " highlight search results
set ignorecase smartcase " case sensitive when typing in mixed/all caps
set incsearch " search while typing
nnoremap <leader>c :nohl<cr>

set laststatus=2 " always show the status line
set wildmenu " visual autocomplete for command menu
set wildmode=list:longest,full
"set autochdir " change cwd to current file's
set omnifunc=syntaxcomplete#Complete

let mapleader=','

" add/remove/change quotes around the word under the cursor
nnoremap <leader>q" ciw"<c-r><c-o>""<esc>
nnoremap <leader>q' ciw'<c-r><c-o>"'<esc>
nnoremap <leader>qd daW"=substitute(@@,"'\\\|\"","","g")<cr>P
nnoremap <leader>cs'" :%s/'\([^']*\)'/"\1"/g<cr>
nnoremap <leader>cs"' :%s/"\([^"]*\)"/'\1'/g<cr>

" disable Ex mode
nnoremap Q <nop>

" autoreload .vimrc on update
autocmd! bufwritepost .vimrc source %

" remove any trailing whitespace from file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" close scratchpad on insert leave
autocmd InsertLeave * if pumvisible()==0 | pclose | endif

" plugins
let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlPBuffer'
let g:ctrlp_root_markers=['.ctrlp']
"let g:ctrlp_working_path_mode='c'

nnoremap <leader>l :TlistToggle<cr>
let Tlist_Show_One_File=1
let Tlist_Use_Right_Window=1
let tlist_php_settings='php;i:interface;c:class;f:function'

nnoremap <c-l> :Phplint<cr>

