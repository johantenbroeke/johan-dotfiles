## Something like this

### Pre-built archives

The [Releases](https://github.com/neovim/neovim/releases) page provides pre-built binaries for Linux systems.

```sh
    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
    sudo rm -rf /opt/nvim
    sudo tar -C /opt -xzf nvim-linux64.tar.gz
```

Then add this to your shell config (`~/.bashrc`, `~/.zshrc`, ...):

    export PATH="$PATH:/opt/nvim-linux64/bin"


### install tweaked lazyvim starter

    git clone git@github.com:johantenbroeke/lazy-vim-starter.git ~/.config/nvim


