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

        if !has("gui_running")
            silent! colorscheme wombat256mod
        else
            set guifont=SourceCodePro+Powerline+Awesome\ Regular:h13
            silent! colorscheme solarized
        endif

        let g:dotvim_loaded = 1
    endif

    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set expandtab

    set foldmethod=marker
    set nofoldenable

    "remove toolbar
    set guioptions-=T

    set wildignore=.git,vendor,*.pyc

    set list

    set ignorecase
    set smartcase
    set incsearch
    set hlsearch

    set nowrap
    set number

    set colorcolumn=80
    set cursorline

    set laststatus=2

    " Backup, Swap and Undo files {{{
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
" }}}

" Plugin Configuration {{{
    " EasyTags
    if isdirectory(expand(s:dir))
        let g:easytags_by_filetype = expand(s:dir) . '/tags//'
    endif
    let b:easytags_auto_highlight = 0
    let g:easytags_async = 1

    " Instant Markdown
    let g:instant_markdown_slow = 1

    " Easytags
    let g:easytags_updatetime_warn = 0

    let g:makegreen_stay_on_file = 1
    let NERDTreeIgnore = ['\.pyc$']
    let g:syntastic_javascript_jslint_conf = ""

    if has("gui_running")
        let g:airline_powerline_fonts = 1
    else
        let g:airline_symbols = {}
        let g:airline_left_sep = ''
        let g:airline_right_sep = ''
        let g:airline_symbols.linenr = '␤'
        let g:airline_symbols.branch = '⎇'
        let g:airline_symbols.paste = 'ρ'
        let g:airline_symbols.whitespace = 'Ξ'
        let g:airline_symbols.space = ' '
    endif
" }}}

" Shortcuts {{{
    nmap th :tabfirst<CR>
    nmap tk :tabnext<CR>
    nmap tj :tabprev<CR>
    nmap tl :tablast<CR>
    nmap td :tabclose<CR>
    nmap te :tabnew<CR>

    nmap fh :bfirst<CR>
    nmap fk :bnext<CR>
    nmap fj :bprevious<CR>
    nmap fl :blast<CR>
    nmap fd :bdelete<CR>

    imap <C-Space> <C-X><C-O>

    let g:UltiSnipsExpandTrigger="<c-k>"
    let g:UltiSnipsJumpForwardTrigger="<c-k>"
    let g:UltiSnipsJumpBackwardTrigger="<c-j>"

    nmap <leader>c :TagbarToggle<CR>
    nmap <leader>f :NERDTreeFind<CR>
    nmap <leader>n :NERDTreeMirror<CR>
    nmap <leader>p :NERDTreeToggle<CR>
    nmap <leader>t :CtrlP<CR>
    map <C-z> :GundoToggle<CR>
" }}}

" Autocommands {{{
    autocmd BufNewFile,BufRead *.py compiler nose
    autocmd BufWritePost * if pumvisible() == 0|pclose|endif
    autocmd bufwritepost *vimrc source $MYVIMRC
" }}}
