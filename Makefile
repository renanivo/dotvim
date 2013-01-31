install: submodules vundle
	@printf "\n"
	@echo "dotVIM instalado com sucesso!"
	@echo "por favor, adicione o seguinte ao seu ~/.vimrc :"
	@echo "source ~/.vim/vimrc"
	@printf "\n"

submodules:
	@git submodule update --init
	@git submodule sync

vundle:
	@vim +BundleInstall +qa

nose-compiler:
	@sudo pip install git+git://github.com/nvie/nose-machineout.git#egg=nose_machineout

instant-markdown:
	sudo gem install redcarpet pygments.rb
	npm -g install instant-markdown-d

ubuntu:
	@echo 'let g:ackprg="ack-grep -H --nocolor --nogroup --column"' >> ~/.vimrc

pull:
	git pull

update: pull submodules vundle

upgrade-submodules: update
	@git submodule foreach 'git checkout master; git pull'
	@cd bundle/powerline/; git checkout develop; git pull;

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
