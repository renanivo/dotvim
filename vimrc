" Baseline {{{
    set nocompatible
    filetype off

    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()

    Bundle 'gmarik/vundle'

    set exrc
    set secure
" }}}

" Plugins {{{
    Bundle 'tpope/vim-sensible'
    Bundle 'scrooloose/nerdtree'
    Bundle 'wincent/Command-T'
    Bundle 'mileszs/ack.vim'
    Bundle 'tpope/vim-surround'
    Bundle 'sjl/gundo.vim'
    Bundle 'tpope/vim-fugitive'
    Bundle 'majutsushi/tagbar'
    Bundle 'tpope/vim-rhubarb'
    Bundle 'motemen/git-vim'
    Bundle 'mattn/zencoding-vim'
    Bundle 'afternoon/vim-phpunit'
    Bundle 'renanivo/vim-makegreen'
    Bundle 'othree/javascript-syntax.vim'
    Bundle 'altercation/vim-colors-solarized'
    Bundle 'xolox/vim-easytags'
    Bundle 'mattn/gist-vim'
    Bundle 'lambdalisue/nose.vim'
    Bundle 'Shougo/neocomplcache'
    Bundle 'mattn/webapi-vim'
    Bundle 'beyondwords/vim-twig'
    Bundle 'rodjek/vim-puppet'
    Bundle 'scrooloose/syntastic'
    Bundle 'vim-scripts/paredit.vim'
    Bundle 'vim-scripts/nginx.vim'
    Bundle 'suan/vim-instant-markdown'
    Bundle 'Lokaltog/vim-powerline'
    Bundle 'jmcantrell/vim-virtualenv'
    Bundle 'msanders/snipmate.vim'
" }}}

" Usability {{{
    syntax enable

    set t_Co=256
    set background=dark
    colorscheme solarized

    set list

    "search
    set ignorecase
    set smartcase
    set incsearch   "find the next match as we type the search
    set hlsearch    "hilight searches by default

    set nowrap "disable word wrap
    set number "enable line numbers

    set colorcolumn=80
    set cursorline

    " To make Omni-Completion tip window to close when a selection is
    " made, these lines close it on movement in insert mode or when leaving
    " insert mode
    autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
    autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" }}}

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

" Plugin Configuration {{{
    let g:neocomplcache_enable_at_startup = 1
" }}}
