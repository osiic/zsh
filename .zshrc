# === OH MY ZSH ===
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# === CUSTOM CONFIGS ===
source "${HOME}/.config/dotfiles/zsh/custom/aliases.zsh"
source "${HOME}/.config/dotfiles/zsh/theme.zsh"

# === NVM ===
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# === STARSHIP PROMPT ===
eval "$(starship init zsh)"
