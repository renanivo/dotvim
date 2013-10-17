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
    Bundle 'bling/vim-airline'
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
    Bundle 'rodjek/vim-puppet'
    Bundle 'scrooloose/nerdtree'
    Bundle 'scrooloose/syntastic'
    Bundle 'Shougo/neocomplcache'
    Bundle 'Shougo/neosnippet.vim'
    Bundle 'sjl/gundo.vim'
    Bundle 'spf13/PIV'
    Bundle 'suan/vim-instant-markdown'
    Bundle 'tpope/vim-fugitive'
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

    function! s:disable_php_folds()
        if get(g:, 'DisableAutoPHPFolding', 0)
            normal zR
        endif
    endfunction

    autocmd Syntax php call s:disable_php_folds()

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

    " Snipmate
    imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
                \ "\<Plug>(neosnippet_expand_or_jump)"
                \: pumvisible() ? "\<C-n>" : "\<TAB>"
    smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
                \ "\<Plug>(neosnippet_expand_or_jump)"
                \: "\<TAB>"
    if has('conceal')
        set conceallevel=2 concealcursor=i
    endif

    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

    " unicode symbols
    let g:airline_left_sep = '⮀'
    let g:airline_left_alt_sep = '⮁'
    let g:airline_right_sep = '⮂'
    let g:airline_right_alt_sep = '⮃'
    let g:airline_symbols.branch = '⭠'
    let g:airline_symbols.readonly = '⭤'
    let g:airline_symbols.linenr = '⭡'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#left_sep = '⮀'
    let g:airline#extensions#tabline#left_alt_sep = '|'

" }}}
