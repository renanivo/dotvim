call pathogen#infect()

set exrc   "enable per-directory .vimrc files
set secure "disable unsafe commands in local .vimrc files

set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default

"enable smartcase on search
set ignorecase
set smartcase

set number "enable line numbers

"load ftplugins and indent files
filetype plugin on
filetype indent on
