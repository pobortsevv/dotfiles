export ZSH="/Users/sabra/.oh-my-zsh"

alias vim=nvim
alias o="open .";

ZSH_THEME="imajes"

plugins=(
	git 
	sudo
	web-search
	history
)

source $ZSH/oh-my-zsh.sh

export PATH=/opt/homebrew/bin:$PATH
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
alias norminette='/Users/sabra/.scripts/colorised_norm.sh'
source /Users/sabra/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /Users/sabra/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
