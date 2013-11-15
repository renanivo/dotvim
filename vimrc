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

    Bundle 'altercation/vim-colors-solarized'
    Bundle 'beyondwords/vim-twig'
    Bundle 'docteurklein/vim-phpunit'
    Bundle 'jmcantrell/vim-virtualenv'
    Bundle 'kien/ctrlp.vim'
    Bundle 'lambdalisue/nose.vim'
    Bundle 'majutsushi/tagbar'
    Bundle 'mattn/gist-vim'
    Bundle 'mattn/webapi-vim'
    Bundle 'mattn/zencoding-vim'
    Bundle 'mileszs/ack.vim'
    Bundle 'motemen/git-vim'
    Bundle 'othree/javascript-syntax.vim'
    Bundle 'Raimondi/delimitMate'
    Bundle 'renanivo/vim-makegreen'
    Bundle 'renanivo/vim-powerline'
    Bundle 'rodjek/vim-puppet'
    Bundle 'scrooloose/nerdtree'
    Bundle 'scrooloose/syntastic'
    Bundle 'shawncplus/phpcomplete.vim'
    Bundle 'Shougo/neocomplcache'
    Bundle 'Shougo/neosnippet.vim'
    Bundle 'sjl/gundo.vim'
    Bundle 'suan/vim-instant-markdown'
    Bundle 'tpope/vim-fugitive'
    Bundle 'tpope/vim-haml'
    Bundle 'tpope/vim-markdown'
    Bundle 'tpope/vim-repeat'
    Bundle 'tpope/vim-rhubarb'
    Bundle 'tpope/vim-sensible'
    Bundle 'tpope/vim-surround'
    Bundle 'tsaleh/vim-matchit'
    Bundle 'vim-scripts/nginx.vim'
    Bundle 'vim-scripts/paredit.vim'
    Bundle 'vim-scripts/wombat256.vim'
    Bundle 'xolox/vim-easytags'
    Bundle 'xolox/vim-misc'

" }}}

" Usability {{{

    if !exists('g:dotvim_loaded')
        syntax enable

        set t_Co=256
        set background=dark
        colorscheme solarized

        let g:dotvim_loaded = 1
    endif

    set list

    set ignorecase
    set smartcase
    set incsearch
    set hlsearch

    set nowrap
    set number

    set colorcolumn=80
    set cursorline

    " autoclose omni-completion tip
    autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
    autocmd InsertLeave * if pumvisible() == 0|pclose|endif

    let s:dir = match(system('uname'), "Darwin") > -1 ? '~/Library/Vim' : '~/.local/share/vim'
    if isdirectory(expand(s:dir))
        if &directory =~# '^\.,'
            let &directory = expand(s:dir) . '/swap//,' . &directory
        endif
        if &backupdir =~# '^\.,'
            let &backupdir = expand(s:dir) . '/backup//,' . &backupdir
        endif
        if exists('+undodir') && &undodir =~# '^\.\%(,\|$\)'
            let &undodir = expand(s:dir) . '/undo//,' . &undodir
        endif
    endif
    if exists('+undofile')
        set undofile
    endif
" }}}

" Status Line {{{
    set laststatus=2

" }}}

" Plugin Configuration {{{

    " EasyTags
    if isdirectory(expand(s:dir))
        let g:easytags_by_filetype = expand(s:dir) . '/tags//'
    endif
    let b:easytags_auto_highlight = 0

    " Neocomplcache
    let g:neocomplcache_enable_at_startup = 1

    " PIV
    let g:DisableAutoPHPFolding = 1

    " Instant Markdown
    let g:instant_markdown_slow = 1

" }}}
