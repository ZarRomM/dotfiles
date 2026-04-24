# =============================================================================
# 1. CARGA RÁPIDA (INSTANT PROMPT) Y ESTÉTICA INICIAL
# Debe mantenerse al principio del archivo para evitar retrasos al abrir.
# =============================================================================
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

if command -v fastfetch &> /dev/null; then
  clear && fastfetch --logo-color-1 208 --color-keys green --color-title yellow
fi

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# =============================================================================
# 2. CONFIGURACIÓN DEL SISTEMA Y OH MY ZSH
# =============================================================================
export TERM="xterm-256color"

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# =============================================================================
# 3. PLUGINS DE SISTEMA (CARGA INICIAL)
# =============================================================================
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# =============================================================================
# 4. HERRAMIENTAS DE DATA SCIENCE Y RUTAS
# =============================================================================
export PATH="$HOME/.local/bin:$HOME/.pixi/bin:$PATH"

# =============================================================================
# 5. AUTOCOMPLETADO INTELIGENTE
# =============================================================================
if command -v uv &> /dev/null; then eval "$(uv generate-shell-completion zsh)"; fi
if command -v pixi &> /dev/null; then eval "$(pixi completion --shell zsh)"; fi

# =============================================================================
# 6. CONFIGURACIÓN VISUAL Y ATAJOS (FZF Y P10K)
# =============================================================================
[[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ]] && source /usr/share/doc/fzf/examples/key-bindings.zsh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# =============================================================================
# 7. MIS ALIAS DE DATA SCIENCE
# =============================================================================
alias av='source .venv/bin/activate'
alias dv='deactivate'
alias jn='jupyter notebook'
alias gs='git status'
alias gp='git push'
alias sys='fastfetch'

# =============================================================================
# 8. PLUGINS DE COLORES (CARGA FINAL VÍA APT)
# =============================================================================
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH=$PATH:/snap/bin
