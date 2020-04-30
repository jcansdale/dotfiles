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

# from https://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html
echo Hello, $(uname)!
 
### add alias as per os using $_myos ###
case $(uname) in
   Darwin)
    # MacOS doesn't support ls --color
    # Display all directory entries that begin with a dot
    alias l.='ls -d -G .*'

    # Display a long-format directory listing
    alias ll='ls -l -G'
   ;;
   *)
    # Display all directory entries that begin with a dot
    alias l.='ls -d .* --color=auto'

    # Display a long-format directory listing
    alias ll='ls -l --color=auto'
   ;;
esac


