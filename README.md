dotVIM
======

My vim configurations

[![Stories in Ready](https://badge.waffle.io/renanivo/dotvim.png)](https://waffle.io/renanivo/dotvim)

![Screenshot](http://i.imgur.com/ijQ54oX.png?1)

Install
-------

    git clone git://github.com/renanivo/dotvim.git ~/.vim
    cd ~/.vim
    make
    echo "source ~/.vim/vimrc" >> ~/.vimrc


### Known Issues

Ack.vim plugin looks for the command *ack*. In Ubuntu this command is known as *ack-grep*. In order to make it work on Ubuntu, you have to execute:

    make ubuntu

You can don it manually adding the following line to your `.vimrc`

    let g:ackprg="ack-grep -H --nocolor --nogroup --column"


### Dependencies

#### Ack.vim

* Ack command line tool

    install on Ubuntu

    ```bash
    sudo apt-get install ack-grep
    ```

    install on OSX

    ```bash
    brew install ack
    ```

    [read more](https://github.com/mileszs/ack.vim#readme)


#### Instant Markdown

This plugin requires some [ruby gems](https://rubygems.org/) and [NPM modules](https://www.npmjs.org/). Make sure both are installed and execute:

```bash
make instant-markdown
```

#### Nose Compiler

The [nose](https://github.com/lambdalisue/nose.vim) compiler needs [nose-machineout](https://github.com/nvie/nose-machineout) formater. To install it, execute:

    make nose-compiler

#### YouCompleteMe

Install gcc and compile it with:

    make youcompleteme


Updates
-------

    make update


Installed Plugins
-----------------

* [Ack](https://github.com/mileszs/ack.vim)
* [CtrlP](https://github.com/kien/ctrlp.vim)
* [DelimitMate](https://github.com/Raimondi/delimitMate)
* [EasyTags](https://github.com/xolox/vim-easytags)
* [Fugitive](https://github.com/tpope/vim-fugitive)
* [Gist](https://github.com/mattn/gist-vim)
* [Git](https://github.com/motemen/git-vim)
* [Gundo](https://github.com/sjl/gundo.vim)
* [Instant Markdown](https://github.com/suan/vim-instant-markdown)
* [MakeGreen](https://github.com/renanivo/vim-makegreen)
* [Matchit](https://github.com/tsaleh/vim-matchit)
* [NERDTree](https://github.com/scrooloose/nerdtree)
* [Paredit](https://github.com/vim-scripts/paredit.vim)
* [PHP Complete](https://github.com/shawncplus/phpcomplete.vim)
* [Powerline](https://github.com/Lokaltog/vim-powerline)
* [Repeat](https://github.com/tpope/vim-repeat)
* [Rhubarb](https://github.com/tpope/vim-rhubarb)
* [Sensible](https://github.com/tpope/vim-sensible)
* [Surround](https://github.com/tpope/vim-surround)
* [Syntastic](https://github.com/scrooloose/syntastic)
* [Tagbar](https://github.com/majutsushi/tagbar)
* [UltiSnips](https://github.com/SirVer/ultisnips)
* [VirtualEnv](https://github.com/jmcantrell/vim-virtualenv)
* [Web API](https://github.com/mattn/webapi-vim)
* [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
* [Zen Coding](https://github.com/mattn/zencoding-vim)

### Syntax

* [Javascript](https://github.com/othree/javascript-syntax.vim)
* [Markdown](https://github.com/tpope/vim-markdown)
* [Nginx Config](https://github.com/vim-scripts/nginx.vim)
* [Puppet](https://github.com/rodjek/vim-puppet/)
* [Twig](https://github.com/beyondwords/vim-twig)
* [HAML](https://github.com/tpope/vim-haml)
* [Sass](https://github.com/tpope/vim-haml)
* [SCSS](https://github.com/tpope/vim-haml)

### Compilers

* [PHPUnit](https://github.com/afternoon/vim-phpunit)
* [Nose](https://github.com/lambdalisue/nose.vim)

### Themes

* [Wombat 256](https://github.com/vim-scripts/wombat256.vim)
* [Solarized](https://github.com/altercation/vim-colors-solarized)
