" Baseline {{{

    set nocompatible
    filetype off

    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()

    Bundle 'gmarik/vundle'

    set exrc
    set secure

    set shell=/bin/bash

" }}}

" Plugins {{{

    Plugin '5long/pytest-vim-compiler'
    Plugin 'airblade/vim-gitgutter'
    Plugin 'altercation/vim-colors-solarized'
    Plugin 'beyondwords/vim-twig'
    Plugin 'bling/vim-airline'
    Plugin 'docteurklein/vim-phpunit'
    Plugin 'honza/vim-snippets'
    Plugin 'jiangmiao/auto-pairs'
    Plugin 'jmcantrell/vim-virtualenv'
    Plugin 'kien/ctrlp.vim'
    Plugin 'lambdalisue/nose.vim'
    Plugin 'majutsushi/tagbar'
    Plugin 'mattn/emmet-vim'
    Plugin 'mattn/gist-vim'
    Plugin 'mattn/webapi-vim'
    Plugin 'mileszs/ack.vim'
    Plugin 'motemen/git-vim'
    Plugin 'othree/javascript-syntax.vim'
    Plugin 'renanivo/vim-makegreen'
    Plugin 'rodjek/vim-puppet'
    Plugin 'scrooloose/nerdtree'
    Plugin 'scrooloose/syntastic'
    Plugin 'shawncplus/phpcomplete.vim'
    Plugin 'SirVer/ultisnips'
    Plugin 'sjl/gundo.vim'
    Plugin 'suan/vim-instant-markdown'
    Plugin 'tpope/vim-fugitive'
    Plugin 'tpope/vim-haml'
    Plugin 'tpope/vim-markdown'
    Plugin 'tpope/vim-repeat'
    Plugin 'tpope/vim-rhubarb'
    Plugin 'tpope/vim-sensible'
    Plugin 'tpope/vim-surround'
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'vim-scripts/matchit.zip'
    Plugin 'vim-scripts/nginx.vim'
    Plugin 'vim-scripts/paredit.vim'
    Plugin 'vim-scripts/wombat256.vim'
    Plugin 'wakatime/vim-wakatime'
    Plugin 'xolox/vim-easytags'
    Plugin 'xolox/vim-misc'

" }}}

" Usability {{{

    if !exists('g:dotvim_loaded')
        syntax enable

        set t_Co=256
        set background=dark
        silent! colorscheme solarized

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

    let s:dir = isdirectory(expand('~/Library')) ? '~/Library/Vim' : '~/.local/share/vim'
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

    " Instant Markdown
    let g:instant_markdown_slow = 1

    " Easytags
    let g:easytags_updatetime_warn = 0

" }}}
