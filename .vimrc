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

au BufWritePost .vimrc source $MYVIMRC

au FileType python map <F2> :!clear<CR> :!ipython<CR>
au FileType python map <F3> :w<CR> :!clear<CR> :!pydb %<CR>
au FileType python map <F5> :w<CR> :!clear<CR> :!ipython %<CR>
au FileType python map <F7> :w<CR> :!clear<CR> :!pylint %<CR>
au FileType python set shiftwidth=4
au FileType python set softtabstop=4

au FileType scheme map <F2> :!clear<CR> :!gsi<CR>
au FileType scheme map <F3> <ESC>
au FileType scheme map <F5> :w<CR> :!clear<CR> :!gsi %<CR>
au FileType scheme map <F7> <ESC>
au FileType scheme set shiftwidth=2
au FileType scheme set softtabstop=2

filetype plugin on
filetype indent on
