dot VIM
=======

Repositório compartilhado de configuração do vim

Instalação
----------
Clone o projeto em .vim:

    git clone git@github.com:renanivo/dotvim.git .vim

Inicie os submódulos:

    git submodule update --init

Compile o Command-T ( mais informações em https://github.com/wincent/Command-T ):

    cd bundle/Command-T/ruby/command-t && ruby exconf.rb && make

Diretrizes
----------

Não adicione mapeamentos de teclas (:map, :imap, :vmap, etc.) ao vimrc global. Isto evita conflitos de mapeamentos entre os usuários do projeto. Se você criou mapeamentos, ou configurações, que são mais cômodas para você e podem interessar a outros, adicione na seção VimRC's Compartilhados

VimRC's Compartilhados
----------------------
* Renan Ivo https://gist.github.com/415001
