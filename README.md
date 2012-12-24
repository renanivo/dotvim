dotVIM
======

Repositório compartilhado de configuração do vim

Instalação
----------
Abra um terminal e execute:

    $ git clone git://github.com/renanivo/dotvim.git ~/.vim
    $ cd ~/.vim
    $ make

### Problemas conhecidos
O Ack.vim procura pelo comando *ack*, no ubuntu o nome do comando correspondente é *ack-grep*. Para corrigir isto, execute o seguinte comando após a instalação:

    $ make ubuntu

Você também pode fazer isto manualmente, adicionando a seguinte linha ao seu .vimrc:

    let g:ackprg="ack-grep -H --nocolor --nogroup --column"

### Dependências

#### Command-T
Para que o script de instalação possa compilar o plugin Command-T, é necessário ter o ruby instalado. No debian / ubuntu, execute:

    $ sudo apt-get install ruby-dev

Também é necessário que seu *vim* seja compilado com suporte a ruby. Para mais informações, veja: https://github.com/wincent/Command-T#readme

#### Ack.vim
O ack.vim necessita do comando ack-grep. Para instalá-lo no debian / ubuntu, execute:

    $ sudo apt-get install ack-grep

Mais informações em: https://github.com/mileszs/ack.vim#readme

Atualização
-----------
Uma vez instalado, obtenha as últimas atualizações com o comando:

    $ make update

Receitas
--------
* Renan Ivo https://gist.github.com/415001

Plugins Inclusos
----------------

* [Ack](https://github.com/mileszs/ack.vim)
* [Command-T](https://github.com/wincent/Command-T)
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
* [Nginx](https://github.com/vim-scripts/nginx.vim)
* [Nose](https://github.com/lambdalisue/nose.vim)
* [PHPUnit](https://github.com/afternoon/vim-phpunit)
* [Paredit](https://github.com/vim-scripts/paredit.vim)
* [Powerline](https://github.com/Lokaltog/vim-powerline)
* [Puppet](https://github.com/rodjek/vim-puppet/)
* [Rhubarb](https://github.com/tpope/vim-rhubarb)
* [Solarized](https://github.com/altercation/vim-colors-solarized)
* [Surround](https://github.com/tpope/vim-surround)
* [Syntastic](https://github.com/scrooloose/syntastic)
* [Tagbar](https://github.com/majutsushi/tagbar)
* [Twig](https://github.com/beyondwords/vim-twig)
* [VirtualEnv](https://github.com/jmcantrell/vim-virtualenv)
* [Web API](https://github.com/mattn/webapi-vim)
* [Zen Coding](https://github.com/mattn/zencoding-vim)
