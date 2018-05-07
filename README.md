# .vim
## My very basic setup for vim

I create this repo in order to keep an accesible and updated setup of my working
environment with vim. Now some notes on how to achieve this config:

## Set up

### Install vim

Instal vim. This depends on the operative system you use.

### Clone this repo

Go to your home folder a clone this repo.

~~~
$ cd ~
$ git clone https://github.com/ivanCanaveral/.vim
~~~

### Run init.sh

Execute the script `ìnit.sh``.

```
bash init.sh
```

This action does the following actions

#### Clone Vundle repo

Vundle helps us to manage vim plugins.

```
git clone https://github.com/VundleVim/Vundle.vim
```


#### Creat a symbolic link

Usually vim needs a .vimrc file at your home folder. However, in order to get all the benefits of git, we're going to create a symbolic link that points to our `/.vim/vimrc` file. To achieve this, in the file we do:

```
$ ln -s ~/.vim/vimrc ~/.vimrc
```

Now, when our system need the .vimrc file, it will know where to find it.

### Install plugins

The first time you execute vim you'll have to install the plugins included in the .vimrc. In order to achieve this, you shoud execute the command

```
:PluginInstall
```

Another tab will appear with the progress of the instalation. To reinstall use `:PluginInstall!` and `:PluginUpdate` to update plugins. You can use other commands like `:PluginSearch`, and a lot more. See `:h vundle` for more information.

### Choosing a theme

You can keep all yout themes at `~/.vim/colors`. You can found a lot of vim themes freely available (maybe [vimcolors](http://vimcolors.com/) can be a good place to start). All the files end with the file extension `.vim`. Some themes are already included with this repo.

Once you've have choosen a theme, you have to modify the `vimrc` file. For example, if we want to use _Solarized_, we have to include the following lines in the `vimrc` configuration file:

```
syntax enable
set background=dark
colorscheme solarized
```

### Other usefull stuff

Now we can add a lot of settings our `vimrc` file. For example, set the enconding

```
set enconding=utf-8
```

or make vim to show the line numbers,

```
set number
```

Other usefull trick can be code folding at identations

```
set foldmethod=indent
set foldlevel=99
```

### Specifing languaje settings

We can use specific settings depending on the languaje we use. For example, let's configure some things to use with python files.

#### Specific python behaviours

When writting python, one very usefull trick is autoindentation. To follow the PEP8 indentation, we can use some instructions to configure it:

```
au BufNewFile,BufRead *.py set tabstop=4
au BufNewFile,BufRead *.py set softtabstop=4
au BufNewFile,BufRead *.py set shiftwidth=4
au BufNewFile,BufRead *.py set textwidth=79
au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.py set autoindent
au BufNewFile,BufRead *.py set smartindent
au BufNewFile,BufRead *.py set fileformat=unix
```
