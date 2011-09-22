install:
	git submodule update --init
	echo "source ~/.vim/vimrc" >> ~/.vimrc
	cd bundle/Command-T/ruby/command-t && ruby extconf.rb && make
ubuntu: install
	echo 'let g:ackprg="ack-grep -H --nocolor --nogroup --column"' >> ~/.vimrc
