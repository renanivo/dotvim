dotVIM
======

Repositório compartilhado de configuração do vim

[![Stories in Ready](https://badge.waffle.io/renanivo/dotvim.png)](https://waffle.io/renanivo/dotvim)

![Screenshot](http://i.imgur.com/ijQ54oX.png?1)

Instalação
----------
Abra um terminal e execute:

    git clone git://github.com/renanivo/dotvim.git ~/.vim
    cd ~/.vim
    make
    echo "source ~/.vim/vimrc" >> ~/.vimrc


### Problemas conhecidos
O Ack.vim procura pelo comando *ack*, no ubuntu o nome do comando correspondente é *ack-grep*. Para corrigir isto, execute o seguinte comando após a instalação:

    make ubuntu

Você também pode fazer isto manualmente, adicionando a seguinte linha ao seu .vimrc:

    let g:ackprg="ack-grep -H --nocolor --nogroup --column"


### Dependências

#### Ack.vim

O ack.vim necessita do comando ack-grep. Para instalá-lo no debian / ubuntu, execute:

    sudo apt-get install ack-grep

Mais informações em: https://github.com/mileszs/ack.vim#readme


#### Instant Markdown

Este plugin tem dependências que precisam ser instaladas via ruby gems e NPM. Certifique-se de que tem ambos instalados e execute:

    make instant-markdown


#### Nose Compiler

O [compiler](http://vimdoc.sourceforge.net/htmldoc/quickfix.html#quickfix.txt) para o [nose](https://nose.readthedocs.org/en/latest/) (Python) necessita de uma dependência extra, se você pretende rodar os testes do seu código Python no vim usando o comando :make, execute:

    make nose-compiler


#### Powerline

Para utilizar os [fancy symbols](https://github.com/Lokaltog/vim-powerline#troubleshooting) da Powerline, é necessário que você instale fontes compatíveis. Você pode encontrar algumas na [wiki da Powerline](https://github.com/Lokaltog/vim-powerline/wiki/Patched-fonts).

#### YouCompleteMe

Para compilar as dependências do plugin, execute:

    make youcompleteme


Atualização
-----------

Uma vez instalado, obtenha as últimas atualizações com o comando:

    make update


Receitas
--------

### .vimrc's
* [Eher](https://gist.github.com/1698770)
* [Renan Ivo](https://gist.github.com/415001)


Plugins Inclusos
----------------

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

### Sintaxe

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

### Temas

* [Wombat 256](https://github.com/vim-scripts/wombat256.vim)
* [Solarized](https://github.com/altercation/vim-colors-solarized)
