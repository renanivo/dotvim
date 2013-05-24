ifeq ($(shell UNAME), 'Linux')
	CACHE_FOLDER := ~/.local/share/vim
else
	CACHE_FOLDER := ~/Library/Vim
endif

default: install

install: submodules vundle cache-dirs
	@printf "\n"
	@echo "dotVIM instalado com sucesso!"
	@echo "por favor, adicione o seguinte ao seu ~/.vimrc :"
	@echo "source ~/.vim/vimrc"
	@printf "\n"

update: pull submodules vundle

unstable: go-unstable update
	@echo "\ndotVIM unstable - Coisas podem falhar aqui\n"

stable: go-stable update
	@echo "\ndotVIM stable - Está tudo bem"

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

cache-dirs:
	@mkdir -p $(CACHE_FOLDER)/backup/
	@mkdir -p $(CACHE_FOLDER)/swap/
	@mkdir -p $(CACHE_FOLDER)/undo/
	@mkdir -p $(CACHE_FOLDER)/tags/

cache-clear:
	@rm -rf $(CACHE_FOLDER)/backup/*
	@rm -rf $(CACHE_FOLDER)/swap/*
	@rm -rf $(CACHE_FOLDER)/undo/*
	@rm -rf $(CACHE_FOLDER)/tags/*

pull:
	git pull

upgrade-submodules: update
	@git submodule foreach 'git checkout master; git pull'

go-stable:
	@git checkout master

go-unstable:
	@git checkout unstable
