## 'Installing' these dotfiles

Depreciated in favor of https://github.com/clifferson/workstation-cookbook/blob/master/recipes/install_dotfiles.rb

```bash
curl -L https://raw.github.com/clifferson/dotfiles/master/install.sh | sh
```

## What do?
install.sh will clone the git repo and run the symlink_dotfiles.sh script which
creates a symlink from ~/.files/dotfiles/FILENAME ~/.FILENAME
