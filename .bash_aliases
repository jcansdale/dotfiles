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

# Display all directory entries that begin with a dot
alias l.='ls -d .* --color=auto'

# Display a long-format directory listing
alias ll='ls -l --color=auto'
