dotVIM
======

My vim configurations

[![Stories in Ready](https://badge.waffle.io/renanivo/dotvim.png)](https://waffle.io/renanivo/dotvim)

![Screenshot](http://i.imgur.com/ijQ54oX.png?1)


Install
-------

    git clone git://github.com/renanivo/dotvim.git ~/.vim
    cd ~/.vim
    make


### Dependencies

* [Ruby](https://rubygems.org/) 
* [NPM](https://www.npmjs.org/)

* `ack` command line tool

    install on Ubuntu

    ```bash
    sudo apt-get install ack-grep
    ```

    install on OSX

    ```bash
    brew install ack
    ```

    [read more](https://github.com/mileszs/ack.vim#readme)


### Known Issues

Ack.vim plugin looks for the command *ack*. In Ubuntu this command is known as *ack-grep*. In order to make it work on Ubuntu, you have to execute:

```bash
make ubuntu
```

You can don it manually adding the following line to your `.vimrc`

```vim
source ~/.vim/vimrc
let g:ackprg="ack-grep -H --nocolor --nogroup --column"
```


Updates
-------

    make update


Installed Plugins
-----------------

Look at [vimrc](vimrc)
