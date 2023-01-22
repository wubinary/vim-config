# vim-config
My Vim Config

## Installation
- install depends (cmake for ycmd, ctags for tagbar)
    - `sudo apt install cmake ctags` 
- clone this repo & vundle plugin manager
    - `git clone https://github.com/wubinary/vim-config.git && cd vim-config && cp -rP .vimrc .ctags .vim ~/ && cd ..`
    - `git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`
- install plugins
    - `vim +PluginInstall +qall`
- compile YCM core
    - `cd ~/.vim/bundle/YouCompleteMe/ && python3 install.py --clangd-completer`
