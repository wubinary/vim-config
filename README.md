# vim-config
My Vim Config

## Ubuntu22.04 Installation
- install depends (cmake for ycmd, ctags for tagbar)
    - `sudo apt install python3-dev cmake universal-ctags vim` 
- clone this repo & vundle plugin manager
    - `git clone https://github.com/wubinary/vim-config.git && cd vim-config && cp -rP .vimrc .ctags .vim ~/ && cd ..`
    - `git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`
- install plugins
    - `vim +PluginInstall +qall`
- compile YCM core
    - `cd ~/.vim/bundle/YouCompleteMe/ && python3 install.py --clangd-completer --verbose`
