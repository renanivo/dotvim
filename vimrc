call pathogen#infect()

set exrc   "enable per-directory .vimrc files
set secure "disable unsafe commands in local .vimrc files

set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default

" syntax highlighting
syntax on

"enable smartcase on search
set ignorecase
set smartcase

set number "enable line numbers

"load ftplugins and indent files
filetype plugin on
filetype indent on

"statusline setup
set statusline=%f       "tail of the filename

"Git
set statusline+=[%{GitBranch()}]

"RVM
set statusline+=%{exists('g:loaded_rvm')?rvm#statusline():''}

"display a warning if fileformat isnt unix
set statusline+=%#warningmsg#
set statusline+=%{&ff!='unix'?'['.&ff.']':''}
set statusline+=%*

"Display a warning if file encoding isnt utf-8
set statusline+=%#warningmsg#
set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
set statusline+=%*

set statusline+=%=      "left/right separator

set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set laststatus=2
