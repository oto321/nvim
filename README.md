# I mean it is a neovim config idk what else to say
## motivation
I saw a very good quote don't exactly remember from where but it went like
> When life gives you time make a neovim conifg

so here we are

## Requirements
- Neovim >= 0.9 (latest stable recommended)
- Git (to clone and pull plugins)
- A C compiler (gcc/clang) and make for Treesitter parsers & fzf native
- curl (for Mason & external downloads)
- Optional: node (for some LSP servers), python3 + pip, go (if you use those language servers)

## Installation
1. Backup your current config (optional):
   mv ~/.config/nvim ~/.config/nvim.backup
2. Clone this repo into your Neovim config directory:
   git clone https://github.com/your-user/your-nvim-config.git ~/.config/nvim
3. Start Neovim: nvim
   Lazy will install itself & all listed plugins automatically on first start.
4. Wait for installations to finish, then restart Neovim.

## Post Install
- Install/ensure LSP servers: :Mason
- Update Treesitter parsers: :TSUpdate
- Sync plugins after changes: :Lazy sync

