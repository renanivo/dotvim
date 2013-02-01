dotVIM
======

Repositório compartilhado de configuração do vim

Instalação
----------
Abra um terminal e execute:

    git clone git://github.com/renanivo/dotvim.git ~/.vim
    cd ~/.vim
    make


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


Atualização
-----------

Uma vez instalado, obtenha as últimas atualizações com o comando:

    make update


Receitas
--------

### .vimrc's
* [Eher](https://gist.github.com/1698770)
* [Renan Ivo](https://gist.github.com/415001)

### Atalhos
* [Autocomplete com tabs no neocomplcache](https://gist.github.com/2406907)


Plugins Inclusos
----------------

* [Ack](https://github.com/mileszs/ack.vim)
* [EasyTags](https://github.com/xolox/vim-easytags)
* [Fugitive](https://github.com/tpope/vim-fugitive)
* [Gist](https://github.com/mattn/gist-vim)
* [Git](https://github.com/motemen/git-vim)
* [Gundo](https://github.com/sjl/gundo.vim)
* [Instant Markdown](https://github.com/suan/vim-instant-markdown)
* [Javascript Syntax](https://github.com/othree/javascript-syntax.vim)
* [MakeGreen](https://github.com/renanivo/vim-makegreen)
* [Neocomplcache](https://github.com/Shougo/neocomplcache)
* [NERDTree](https://github.com/scrooloose/nerdtree)
* [Nginx Config Syntax](https://github.com/vim-scripts/nginx.vim)
* [Nose Compiler](https://github.com/lambdalisue/nose.vim)
* [PHPUnit](https://github.com/afternoon/vim-phpunit)
* [Paredit](https://github.com/vim-scripts/paredit.vim)
* [PHP Complete](https://github.com/shawncplus/phpcomplete.vim)
* [PIV](https://github.com/spf13/PIV)
* [Powerline](https://github.com/Lokaltog/vim-powerline)
* [Puppet Config Syntax](https://github.com/rodjek/vim-puppet/)
* [Rhubarb](https://github.com/tpope/vim-rhubarb)
* [Snipmate](https://github.com/msanders/snipmate.vim)
* [Solarized](https://github.com/altercation/vim-colors-solarized)
* [Surround](https://github.com/tpope/vim-surround)
* [Syntastic](https://github.com/scrooloose/syntastic)
* [Tagbar](https://github.com/majutsushi/tagbar)
* [Twig](https://github.com/beyondwords/vim-twig)
* [VirtualEnv](https://github.com/jmcantrell/vim-virtualenv)
* [Web API](https://github.com/mattn/webapi-vim)
* [Zen Coding](https://github.com/mattn/zencoding-vim)
