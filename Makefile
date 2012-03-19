install: init command-t
	@printf "\n"
	@echo "dotVIM instalado com sucesso!"
	@printf "\n"
init:
	@git submodule update --init
	@echo "source ~/.vim/vimrc" >> ~/.vimrc
command-t:
	@cd bundle/Command-T/ruby/command-t && ruby extconf.rb && make
ubuntu:
	@echo 'let g:ackprg="ack-grep -H --nocolor --nogroup --column"' >> ~/.vimrc
update:
	@git pull
	@git submodule update --init
	@git submodule sync
upgrade-submodules: update
	@git submodule foreach 'git checkout master; git pull'
