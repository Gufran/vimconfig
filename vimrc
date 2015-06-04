source ~/.vim/configuration/plugins.vim
source ~/.vim/configuration/functions.vim
source ~/.vim/configuration/settings.vim
source ~/.vim/configuration/commands.vim
source ~/.vim/configuration/autocommands.vim
source ~/.vim/configuration/keybindings.vim

for config in split(glob('~/.vim/private/*.vim'), '\n')
    exe 'source' config 
endfor
