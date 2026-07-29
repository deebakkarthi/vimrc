" Sane defaults

" Disable vi compatibility
set nocompatible

" Disables autocomplete on include files
set complete-=i

" Disable recognizing numbers as octal
" When you press CTRL-A on 07, it becomes 010 instead of 08
" After disabling octal 07 will become 08
set nrformats-=octal

" Incremental search
set incsearch

" Matched terms are highlighted
set hlsearch

" CTRL-L to clear the last search results
nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>

" Always show statusline
set laststatus=2

" Show the coords of cursor in the statusline
set ruler

" For TAB completion in command mode
set wildmenu

" Start scrolling 5 lines before end of the screen
set scrolloff=5

set display+=lastline

filetype plugin indent on

" Enable syntax highlighting
syntax enable

  set autoread

if !empty(&viminfo)
  set viminfo^=!
endif
set sessionoptions-=options
set viewoptions-=options

" Bright without bold
if &t_Co == 8 && $TERM !~# '^Eterm'
  set t_Co=16
endif

set colorcolumn=80

set nu

set noswapfile

set nowrap
