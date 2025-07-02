if [ -r ~/husseats/dotfiles/.zshrc ]; then
    source ~/husseats/dotfiles/.zshrc
fi
# bun completions
[ -s "/Users/hheg/.bun/_bun" ] && source "/Users/hheg/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$HOME/tools:$PATH"
# pnpm
export PNPM_HOME="/Users/hheg/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

. "$HOME/.local/bin/env"
