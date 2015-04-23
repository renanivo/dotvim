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

install: submodules vundle cache-dirs youcompleteme
	@echo ""
	@echo "$(OK_COLOR)dotVIM instalado com sucesso!$(NO_COLOR)"
	@echo ""

update: pull submodules vundle

submodules:
	@git submodule update --init
	@git submodule sync

vundle:
	@vim +BundleClean! +BundleInstall! +qa

check-npm:
	@if ! which npm; then \
		echo "$(WARN_COLOR)Missing NPM$(NO_COLOR)"; \
		exit 1; \
	fi

nose-compiler:
	@pip install git+git://github.com/nvie/nose-machineout.git#egg=nose_machineout

instant-markdown: check-npm
	@sudo gem install redcarpet pygments.rb
	@npm -g install instant-markdown-d

instant-rst:
	@pip install https://github.com/Rykka/instant-rst.py/archive/master.zip

youcompleteme:
	@cd ./bundle/YouCompleteMe; sh install.sh

ubuntu:
	@echo 'let g:ackprg="ack-grep -H --nocolor --nogroup --column"' >> ~/.vimrc

ctags-mac:
	@cd /usr/local/Library/Formula; \
		curl https://gist.github.com/renanivo/7102561/raw/35409553993c53a0ef9eedc1fca08d24a57dee55/ctags.patch | git apply
	@brew install ctags --HEAD

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
