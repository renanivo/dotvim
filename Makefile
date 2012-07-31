install: init command-t
	@printf "\n"
	@echo "dotVIM instalado com sucesso!"
	@printf "\n"

init:
	@git submodule update --init
	@echo "source ~/.vim/vimrc" >> ~/.vimrc

command-t:
	@cd bundle/Command-T/ruby/command-t && ruby extconf.rb && make

nose-compiler:
	@sudo pip install git+git://github.com/nvie/nose-machineout.git#egg=nose_machineout

ubuntu:
	@echo 'let g:ackprg="ack-grep -H --nocolor --nogroup --column"' >> ~/.vimrc

update:
	@git pull
	@git submodule update --init
	@git submodule sync

upgrade-submodules: update
	@git submodule foreach 'git checkout master; git pull'

unstable:
	@git checkout unstable > /dev/null
	@git submodule sync > /dev/null
	@git submodule update --init > /dev/null
	@echo "\ndotVIM unstable - Coisas podem falhar aqui\n"

stable:
	@git checkout master > /dev/null
	@git submodule sync > /dev/null
	@git submodule update --init > /dev/null
	@echo "\ndotVIM stable - Está tudo bem"
