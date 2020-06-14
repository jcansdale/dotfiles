alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias hello-world='echo Hello, World!'

# Bootstrap run.sh for ghvs tool
case $(uname) in
   Darwin)
    # On MacOS `source` fails with "(23) Failed writing body when"
    alias ghvs='bash <(curl -Lks https://raw.githubusercontent.com/jcansdale/ghvs/master/run.sh)'
   ;;
   Linux)
    # DOTNET_ROOT and PATH might not be configured on Codespaces (using `. <(curl` allows us to persist them)
    alias ghvs='. <(curl -Lks https://raw.githubusercontent.com/jcansdale/ghvs/master/run.sh)'
   ;;
esac

# GitHub Packages PAT for `jcansdale-robot` with `read:packages` scope
export READ_PACKAGES_TOKEN=$(base64 --decode <<< MzQ4ZjU3NmFkMGM1ODcxZDY1YzgzNzk5MzdlZjRlZTg2OGRiZmZlYwo=)

# Install go envvars
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin

export GITPATH=~/git

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

    # Display color directory listing
    alias l='ls -G'
   ;;
   *)
    # Display all directory entries that begin with a dot
    alias l.='ls -d .* --color=auto'

    # Display a long-format directory listing
    alias ll='ls -l --color=auto'

    # Display color directory listing
    alias ll='ls --color=auto'
   ;;
esac

# Alias code-insiders to code if code doesn't exist
if [[ $(which code-insiders) && ! $(which code) ]]; then alias code=code-insiders; fi

# Alias code-oss to code if code doesn't exist
if [[ $(which code-oss) && ! $(which code) ]]; then alias code=code-oss; fi
