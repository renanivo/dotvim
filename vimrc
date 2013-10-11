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
    Bundle 'renanivo/vim-makegreen'
    Bundle 'renanivo/vim-powerline'
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
    let s:dir = has('win32') ? '$APPDATA/Vim' : match(system('uname'), "Darwin") > -1 ? '~/Library/Vim' : empty($XDG_DATA_HOME) ? '~/.local/share/vim' : '$XDG_DATA_HOME/vim'
    let g:easytags_by_filetype = expand(s:dir) . '/tags//'
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
" }}}
