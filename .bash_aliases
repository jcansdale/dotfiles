alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias hello-world='echo Hello, World!'

# Install git aliases
git config --global include.path "~/.gitconfig_aliases"

# navigate up the directory tree
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias ........="cd ../../../../../../.."
# from https://github.com/cgoldberg/dotfiles/blob/master/.bash_aliases#L179
