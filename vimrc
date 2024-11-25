" Baseline {{{
    set nocompatible
    filetype off

    set exrc
    set secure

    set shell=/bin/bash

    let s:config_dir = isdirectory(expand('~/Library')) ? '~/Library/Vim' : '~/.local/share/vim'
" }}}

" Plugins {{{
    call plug#begin('~/.vim/plugged')

    Plug '5long/pytest-vim-compiler'
    Plug 'airblade/vim-gitgutter'
    Plug 'altercation/vim-colors-solarized'
    Plug 'bling/vim-airline' " {{{
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
    Plug 'dracula/vim'
    Plug 'editorconfig/editorconfig-vim' " {{{
        let g:EditorConfig_exec_path = '/usr/local/bin/editorconfig'
    " }}}
    Plug 'github/copilot.vim'
    Plug 'hdima/python-syntax' " {{{
        let python_highlight_all = 1
    " }}}
    Plug 'honza/vim-snippets'
    Plug 'hynek/vim-python-pep8-indent'
    Plug 'jiangmiao/auto-pairs'
    Plug 'jmcantrell/vim-virtualenv'
    Plug 'kien/ctrlp.vim' "{{{
        nmap <leader>t :CtrlP<CR>
    " }}}
    Plug 'majutsushi/tagbar' " {{{
        nmap <leader>c :TagbarToggle<CR>
    " }}}
    Plug 'mattn/gist-vim'
    Plug 'mattn/webapi-vim'
    Plug 'mileszs/ack.vim'
    Plug 'motemen/git-vim'
    Plug 'mxw/vim-jsx'
    Plug 'pangloss/vim-javascript'
    Plug 'renanivo/vim-makegreen' " {{{
        let g:makegreen_stay_on_file = 1
    " }}}
    Plug 'Risto-Stevcev/vim-ecmascript6'
    Plug 'Rykka/InstantRst'
    Plug 'scrooloose/nerdtree' " {{{
        let NERDTreeIgnore = ['\.pyc$']

        nmap <leader>f :NERDTreeFind<CR>
        nmap <leader>n :NERDTreeMirror<CR>
        nmap <leader>p :NERDTreeToggle<CR>
    " }}}
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    Plug 'SirVer/ultisnips' " {{{
        let g:UltiSnipsExpandTrigger="<c-k>"
        let g:UltiSnipsJumpForwardTrigger="<c-k>"
        let g:UltiSnipsJumpBackwardTrigger="<c-j>"
    " }}}
    Plug 'sjl/gundo.vim' " {{{
        map <C-z> :GundoToggle<CR>
    " }}}
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-haml'
    Plug 'tpope/vim-markdown'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-rhubarb'
    Plug 'tpope/vim-sensible'
    Plug 'tpope/vim-surround'
    Plug 'vim-scripts/matchit.zip'
    Plug 'vim-scripts/nginx.vim'
    Plug 'vim-scripts/wombat256.vim'
    Plug 'wakatime/vim-wakatime'
    Plug 'xolox/vim-easytags' " {{{
        if isdirectory(expand(s:config_dir))
            let g:easytags_by_filetype = expand(s:config_dir) . '/tags//'
        endif
        let g:easytags_updatetime_warn = 0
        let g:easytags_on_cursorhold = 0
        let g:easytags_auto_update = 0
        let g:easytags_auto_highlight = 0
    " }}}
    Plug 'xolox/vim-misc'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    call plug#end()
" }}}

" Usability {{{

    if !exists('g:dotvim_loaded')
        syntax enable

        set t_Co=256
        set background=dark

        if !has("gui_running")
            silent! colorscheme wombat256mod
        else
            set macligatures
            set guifont=FiraCodeNFM-Reg:h13
            silent! colorscheme solarized
        endif

        let g:dotvim_loaded = 1
    endif

    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set expandtab

    set foldmethod=marker

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
    if isdirectory(expand(s:config_dir))
        if &directory =~# '^\.,'
            let &directory = expand(s:config_dir) . '/swap//,' . &directory
        endif
        if &backupdir =~# '^\.,'
            let &backupdir = expand(s:config_dir) . '/backup//,' . &backupdir
        endif
        if exists('+undodir') && &undodir =~# '^\.\%(,\|$\)'
            let &undodir = expand(s:config_dir) . '/undo//,' . &undodir
        endif
    endif
    if exists('+undofile')
        set undofile
    endif
    " }}}

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

    imap jj <Esc>

    nmap <silent> [g <Plug>(coc-diagnostic-prev)
    nmap <silent> ]g <Plug>(coc-diagnostic-next)

    " GoTo code navigation.
    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gy <Plug>(coc-type-definition)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gr <Plug>(coc-references)
    nmap <silent> gn <Plug>(coc-rename)

    inoremap <silent><expr> <c-space> coc#refresh()
    nnoremap <silent> K :call <SID>show_documentation()<CR>
" }}}
