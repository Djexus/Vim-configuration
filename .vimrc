syn on

map <C-N> :vsplit<CR>
map <C-O> :NERDTreeToggle<CR>
map <C-S> :w<CR>
map <C-P> :hardcopy<CR>
map <C-W> :q<CR>
map <C-Z> :undo<CR>
map <C-Y> :redo<CR>
map <C-E> :tabnew $MYVIMRC<CR>
map <C-T> :tabnew<CR>
map <TAB> :tabn<CR>
map <C-Up> :wincmd k<CR>
map <C-Right> :wincmd l<CR>
map <C-Left> :wincmd h<CR>
map <C-Down> :wincmd j<CR>
map <C-J><C-I> :!git init<CR> :tabnew .gitignore<CR>
map <C-J><C-B> :!git add -A<CR> :!git commit %<CR>
map <C-J><C-P> :!git push origin<CR>

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

au bufwritepost .vimrc source $MYVIMRC

au filetype python map <F2> :!clear<CR> :!ipython<CR>
au filetype python map <F5> :w<CR> :!clear<CR> :!ipython %<CR>
au filetype python map <F7> :w<CR> :!clear<CR> :!python -m doctest -v %<CR>
au filetype python set shiftwidth=4
au filetype python set softtabstop=4

au filetype scheme map <F2> :!clear<CR> :!racket<CR>
au filetype scheme map <F5> :w<CR> :!clear<CR> :!racket %<CR>
au filetype scheme map <F7> <ESC>
au filetype scheme set shiftwidth=2
au filetype scheme set softtabstop=2

au filetype c map <F2> :w<CR> :!clear<CR> :!gcc %<CR>
au filetype c map <F5> :w<CR> :!clear<CR> :!gcc %<CR> :!./a.out<CR>
au filetype c map <F7> <ESC>
au filetype c set shiftwidth=4
au filetype c set softtabstop=4

au filetype haskell map <F2> :!clear<CR> :!ghci<CR>
au filetype haskell map <F5> :w<CR> :!clear<CR> :!ghci %<CR>
au filetype haskell map <F7> <ESC>

filetype plugin on
filetype indent on
