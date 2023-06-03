# BL4Z3's Dotfiles

This repository holds my dotfiles for

- NeoVIM
- fish
- tmux
- kitty

I use the Tokyo Night theme inside kitty and NeoVIM. Since I'll be switching over different devices, a tiling WM might not be an option always, thus, I've transitioned to now use a terminal multiplexer known as tmux

## How to use these dotfiles?

First, ensure the following are installed.

- git
- nodejs/npm
- tmux
- [tmux plugin manager](https://github.com/tmux-plugins/tpm)
- kitty
- fish(optional)

Then, clone this repository to your `$HOME/.config` by running

```sh
cd $HOME/.config
git clone https://github.com/gopal-kaul/dotfiles.git .
```

NeoVIM will automatically install it's dependencies when you launch it by running

````sh
neovim```

Install TPM by running
```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
````

Then, to install all the plugins, press Control-A, followed by Shift-i.

I'll hopefully add in more documentation and screenshots soon.

## To-Dos

- [x] Setup repository
- [] Add Screenshots
- [] Add Documentation
