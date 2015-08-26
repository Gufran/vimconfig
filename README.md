## My Vim configuration

### Installation
Clone the repository in your home directory and rename to `.vim`. Run `install.sh` to setup everything.

    git clone https://github.com/Gufran/vimconfig ~/.vim
    ~/.vim/install.sh

All of the configuration and plugin definitions are in `configuration` directory.
You can create a directory `private` for all kind of private configuration, `private` directory is same as configuration directory except it is excluded from git repository, make sure your custom config files have an extension `.vim` or they will not be sourced.
