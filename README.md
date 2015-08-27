## My Vim configuration

### Installation
Clone the repository in your home directory and rename to `.vim`. Run `install.sh` to setup everything.

    git clone https://github.com/Gufran/vimconfig ~/.vim
    ~/.vim/install.sh

All of the configuration and plugin definitions are in `configuration` directory.
You can create a directory `private` for all kind of private configuration, `private` directory is same as configuration directory except it is excluded from git repository, make sure your custom config files have an extension `.vim` or they will not be sourced.

### Keybindings
Quite a few keybindings are available within this configuration

 - `F1` key is mapped to `NOP` in all three modes. This is to protect `ESC` from fatfinger.
 - `CTRL+h` will set focus to left split
 - `CTRL+l` will set focus to right split
 - `CTRL+j` will set focus to lower split
 - `CTRL+k` will set focus to upper split
 - `<Leader> k` will toggle nerdtree file explorer
 - `F5` will toggle Gundo history viewer
 - `CTRL+p` will open a quick file navigtor, much like the `CTRL+p` popup in sublime text
 - `<leader> y` will show the yank history and can paste selected entry on presing enter key
 - `space` key will toggle folds
 - `<leader> c` clears search highlightings
 - `<leader> d` deletes current buffer
