# vim-config
My Vim Config

## Installation
- install depends (cmake for ycmd, ctags for tagbar)
    - `sudo apt install cmake ctags` 
- clone repo
    - `git clone https://github.com/wubinary/vim-config.git && cd vim-config && cp -r .vimrc .ctags .vim/colors ~/`
- install plugins
    - `vim +PluginInstall +qall`
- compile YCM core
    - `cd ~/.vim/bundle/YouCompleteMe/ && python3 install.py --clangd-completer`
