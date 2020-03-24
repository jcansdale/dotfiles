# Using Git for dotfiles

- The best way to store your dotfiles: A bare Git repository
https://www.atlassian.com/git/tutorials/dotfiles

- Bootstrap
```
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
curl -Lks https://raw.githubusercontent.com/jcansdale/dotfiles-test/master/install.sh | /bin/bash
```
