# vim-config
My Vim Config

## Ubuntu22.04 Installation
- Install depends (cmake for ycmd, ctags for tagbar)
    - `sudo apt install python3-dev cmake universal-ctags vim` 
- Clone this repo & vundle plugin manager
    - `git clone https://github.com/wubinary/vim-config.git && cd vim-config && cp -rP .vimrc .ctags .vim ~/ && cd ..`
    - `git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`
- Install plugins
    - `vim +PluginInstall +qall`
- Compile YCM core
    - `cd ~/.vim/bundle/YouCompleteMe/ && python3 install.py --clangd-completer --verbose`

## Mac OS Installation
- Install depends (cmake for ycmd, ctags for tagbar)
    - `brew install git cmake universal-ctags vim` 
- Clone this repo & vundle plugin manager
    - `git clone https://github.com/wubinary/vim-config.git && cd vim-config && cp -rP .vimrc .ctags .vim ~/ && cd ..`
    - `git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`
- Install plugins
    - `vim +PluginInstall +qall`
- Update python interpreter
    - vim ~/.vimrc # find the python interpreter path
- Compile YCM core
    - cd ~/.vim/bundle/YouCompleteMe && /opt/homebrew/bin/python3 install.py --clangd-completer --verbose
