dotVIM
======

Repositório compartilhado de configuração do vim

Instalação
----------
Pelo terminal, entre na sua pasta *home* e execute:

    $ git clone git://github.com/renanivo/dotvim.git .vim
    $ cd .vim
    $ make

### Problemas conhecidos
O Ack.vim procura pelo comando *ack*, no ubuntu o nome do comando correspondente é *ack-grep*. Para corrigir isto, instale o dotVIM com o comando:

    $ make ubuntu

Se você já instalou o dotVIM, adicione a seguinte linha ao seu .vimrc:

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

Diretrizes
----------

Não adicione mapeamentos de teclas (:map, :imap, :vmap, etc.) ao vimrc global. Isto evita conflitos de mapeamentos entre os usuários do projeto. Se você criou mapeamentos, ou configurações, que são mais cômodas para você e podem interessar a outros, adicione na seção **Receitas**

Receitas
--------
* Renan Ivo https://gist.github.com/415001

Plugins Inclusos
----------------

* [Ack](https://github.com/mileszs/ack.vim)
* [Command-T](https://github.com/wincent/Command-T)
* [Fugitive](https://github.com/tpope/vim-fugitive)
* [Git](https://github.com/motemen/git-vim)
* [Gundo](https://github.com/sjl/gundo.vim)
* [MakeGreen](https://github.com/renanivo/vim-makegreen)
* [NERDTree](https://github.com/scrooloose/nerdtree)
* [PHP XDebug](https://github.com/travisj/php-xdebug-vim)
* [PHPUnit](https://github.com/afternoon/vim-phpunit)
* [Rhubarb](https://github.com/tpope/vim-rhubarb)
* [Surround](https://github.com/tpope/vim-surround)
* [Tagbar](https://github.com/majutsushi/tagbar)
* [Zen Coding](https://github.com/mattn/zencoding-vim)
