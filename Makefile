install:
	git submodule update --init
	echo "source ~/.vim/vimrc" >> ~/.vimrc
	cd bundle/Command-T/ruby/command-t && ruby extconf.rb && make
