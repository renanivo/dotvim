NO_COLOR=\x1b[0m
OK_COLOR=\x1b[32;01m
ERROR_COLOR=\x1b[31;01m
WARN_COLOR=\x1b[33;01m

ifeq ($(shell UNAME), 'Linux')
	CACHE_FOLDER := ~/.local/share/vim
else
	CACHE_FOLDER := ~/Library/Vim
endif

default: install

install: submodules vundle cache-dirs
	@echo ""
	@echo "$(OK_COLOR)dotVIM instalado com sucesso!$(NO_COLOR)"
	@echo ""
	@echo "adicione o seguinte ao seu ~/.vimrc :"
	@echo "$(WARN_COLOR)source ~/.vim/vimrc$(NO_COLOR)"
	@echo ""

update: pull submodules vundle

unstable: go-unstable update
	@echo ""
	@echo "$(WARN_COLOR)dotVIM unstable - Coisas podem falhar aqui$(NO_COLOR)"
	@echo ""

stable: go-stable update
	@echo ""
	@echo "$(OK_COLOR)dotVIM stable - Está tudo bem$(WARN_COLOR)"
	@echo ""

submodules:
	@git submodule update --init
	@git submodule sync

vundle:
	@vim +BundleClean! +BundleInstall +qa

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
	@git pull

upgrade-submodules: update
	@git submodule foreach 'git checkout master; git pull'

go-stable:
	@git checkout master

go-unstable:
	@git checkout unstable
