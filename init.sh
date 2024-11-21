plugins=(git)

source ~/.zsh_config/alias.sh

neofetch

bindkey -e
bindkey '\e\e[C' forward-word
bindkey '\e\e[D' backward-word 
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/.rvm/rubies/ruby-3.3.5/bin"
export PATH="$PATH:$HOME/zig"
# export PATH="$PATH:$HOME/helix"
# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"

eval "$(starship init zsh)"
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(zoxide init zsh)"
source <(fzf --zsh)
