syn on

map <C-O> :NERDTreeToggle<CR>
map <C-S> :w<CR>
map <C-P> :hardcopy<CR>
map <C-T> :tabnew<CR>
map <C-Left> :tabp<CR>
map <C-Right> :tabn<CR>
map <C-Z> :undo<CR>
map <C-Y> :redo<CR>
map <C-E> :tabnew $MYVIMRC<CR>
map <C-W> :q<CR>

set nocompatible
set autoread
set number
set history=700
set numberwidth=4
set background=light
set tabpagemax=10
set expandtab
set smarttab
set foldmethod=indent 
set foldlevel=99
set completeopt=longest,menu

au bufwritepost * :!git add && git commit -a %

au bufwritepost .vimrc source $MYVIMRC

au filetype python map <F2> :!clear<CR> :!ipython<CR>
au filetype python map <F3> :w<CR> :!clear<CR> :!pydb %<CR>
au filetype python map <F5> :w<CR> :!clear<CR> :!ipython %<CR>
au filetype python set shiftwidth=4
au filetype python set softtabstop=4

au filetype scheme map <F2> :!clear<CR> :!racket<CR>
au filetype scheme map <F3> <ESC>
au filetype scheme map <F5> :w<CR> :!clear<CR> :!racket %<CR>
au filetype scheme set shiftwidth=2
au filetype scheme set softtabstop=2

au filetype c map <F2> :w<CR> :!clear<CR> :!gcc %<CR>
au filetype c map <F3> :w<CR> :!clear<CR> :!gdb %<CR>
au filetype c map <F5> :w<CR> :!clear<CR> :!gcc %<CR> :!./a.out<CR>
au filetype c set shiftwidth=4
au filetype c set softtabstop=4

filetype plugin on
filetype indent on
