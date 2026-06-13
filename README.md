# dotfiles

Personal development environment. Neovim + tmux, configured for Go and TypeScript/React development.

## What's Inside

```
~/.config/
├── nvim/        Neovim config (based on kickstart.nvim, vim.pack)
└── tmux/        tmux config (TPM-managed plugins)
```

### Neovim

Built on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) (vim.pack branch), requires **Neovim 0.12+**.

**Language Support:** Go, TypeScript, JavaScript, React (TSX), Lua

| Category | Tools |
|----------|-------|
| LSP | gopls, vtsls, eslint |
| Formatters | prettierd, goimports, gofumpt, stylua |
| Linters | eslint_d |
| Completion | blink.cmp + Copilot ghost text |

**Plugins:**

| Plugin | Purpose |
|--------|---------|
| tokyonight (night) | Colorscheme |
| copilot.lua + CopilotChat | AI assistance |
| harpoon 2 | File navigation |
| telescope.nvim | Fuzzy finder |
| trouble.nvim | Diagnostics list |
| flash.nvim | Motion/jump |
| neo-tree.nvim | File explorer |
| bufferline.nvim | Buffer tabs |
| noice.nvim | UI (cmdline, messages, notifications) |
| lazygit.nvim | Git TUI |
| git-blame.nvim | Inline git blame |
| diffview.nvim | Diff viewer |
| toggleterm.nvim | Floating terminal |
| vim-tmux-navigator | Seamless pane navigation |
| nvim-treesitter-context | Sticky function headers |
| conform.nvim | Format on save |

### tmux

- Prefix: `Ctrl-a`
- Vim-style pane navigation (`h/j/k/l`)
- Seamless nvim/tmux pane switching (vim-tmux-navigator)
- Session persistence (resurrect + continuum)
- Mouse support

---

## Install

### Prerequisites

**macOS:**
```sh
brew install neovim tmux git node go fzf ripgrep fd tree-sitter-cli
```

**Linux (Debian/Ubuntu):**
```sh
# Neovim 0.12+ (not in default repos yet — use appimage or build from source)
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage
chmod u+x nvim-linux-x86_64.appimage
sudo mv nvim-linux-x86_64.appimage /usr/local/bin/nvim

# Other dependencies
sudo apt install tmux git nodejs npm golang-go fzf ripgrep fd-find
npm install -g tree-sitter-cli
```

**Linux (Arch):**
```sh
sudo pacman -S neovim tmux git nodejs npm go fzf ripgrep fd tree-sitter-cli
```

### Setup

```sh
# Back up existing config if needed
[ -d ~/.config/nvim ] && mv ~/.config/nvim ~/.config/nvim.bak
[ -d ~/.config/tmux ] && mv ~/.config/tmux ~/.config/tmux.bak

# Clone
git clone git@github.com:gopal-kaul/dotfiles.git ~/.config

# Install tmux plugins
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
~/.config/tmux/plugins/tpm/bin/install_plugins

# Launch nvim — plugins install automatically on first run
nvim
```

> **Note:** If `~/.config` already exists with other files, clone to a temp location and copy:
> ```sh
> git clone git@github.com:gopal-kaul/dotfiles.git /tmp/dotfiles
> cp -r /tmp/dotfiles/nvim ~/.config/nvim
> cp -r /tmp/dotfiles/tmux ~/.config/tmux
> ```
> Then initialize the git repo at `~/.config` manually if you want to track changes.

### tmux Plugin Manager (TPM)

[TPM](https://github.com/tmux-plugins/tpm) manages tmux plugins. After cloning:

```sh
# Install TPM
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```

Then inside a tmux session:

| Key | Action |
|-----|--------|
| `prefix + I` | Install plugins listed in tmux.conf |
| `prefix + U` | Update plugins |
| `prefix + alt + u` | Uninstall plugins not in tmux.conf |

> Prefix is `Ctrl-a` (remapped from default `Ctrl-b`).

If you prefer to install without entering tmux:
```sh
~/.config/tmux/plugins/tpm/bin/install_plugins
```

### Post-Install

On first launch, Neovim will:
1. Download and install all plugins via vim.pack
2. Compile treesitter parsers (requires `tree-sitter-cli` and a C compiler)
3. Install LSP servers and tools via Mason

This takes 1-2 minutes. Restart nvim after completion.

---

## Syncing with Upstream Kickstart

The `nvim/` directory is managed as a [git subtree](https://www.atlassian.com/git/tutorials/git-subtree) from kickstart.nvim. To pull upstream updates:

```sh
cd ~/.config
git fetch upstream
git subtree pull --prefix=nvim upstream master --squash
```

Resolve any merge conflicts in `nvim/init.lua` (your customizations vs upstream changes), then commit.

---

## Key Bindings (Neovim)

Leader key: `Space`

| Key | Action |
|-----|--------|
| `jk` | Exit insert mode |
| `<leader>sh` | Search help |
| `<leader>sf` | Search files |
| `<leader>sg` | Search by grep |
| `<leader>a` | Harpoon: add file |
| `<leader>hh` | Harpoon: menu |
| `<leader>1-4` | Harpoon: jump to file 1-4 |
| `<leader>e` | Show diagnostic float |
| `<leader>cc` | CopilotChat toggle |
| `<leader>lg` | Lazygit |
| `<leader>xx` | Trouble: diagnostics |
| `Ctrl-h/j/k/l` | Navigate panes (nvim + tmux) |
| `s` | Flash jump |
| `gd` | Go to definition |
| `gr` | References |
| `K` | Hover docs |
| `<leader>rn` | Rename |
| `<leader>ca` | Code action |

---

## License

Neovim config based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) (MIT).
