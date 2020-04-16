# Using Git for dotfiles

- The best way to store your dotfiles: A bare Git repository
https://www.atlassian.com/git/tutorials/dotfiles

- Bootstrap
```
curl -Lks https://raw.githubusercontent.com/jcansdale/dotfiles/master/install.sh | /bin/bash
```

- config
```
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```
