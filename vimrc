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

"show a line on the 80th column
if exists('+colorcolumn')
    set colorcolumn=80
endif

" cursor line
set cursorline

" set the default colorscheme as solarized
syntax enable
set background=dark
colorscheme solarized

" To make Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Terminal colors
set t_Co=256

" Status Line {{{
if !exists('g:Powerline_loaded')
    set statusline=%f       "tail of the filename

    "Git
    set statusline+=[%{GitBranch()}]

    "display a warning if fileformat isnt unix
    set statusline+=%#warningmsg#
    set statusline+=%{&ff!='unix'?'['.&ff.']':''}
    set statusline+=%*

    "Display a warning if file encoding isnt utf-8
    set statusline+=%#warningmsg#
    set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
    set statusline+=%*

    "Waring on syntax errors (provided by Syntastic)
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    set statusline+=%=      "left/right separator

    set statusline+=%c,     "cursor column
    set statusline+=%l/%L   "cursor line/total lines
    set statusline+=\ %P    "percent through file
    set laststatus=2
endif
" }}}

"Plugin Configuration
let g:neocomplcache_enable_at_startup = 1
