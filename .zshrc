export ZSH="/Users/sabra/.oh-my-zsh"

alias vim=nvim
alias ls=exa
alias df=duf
alias du=dust
alias o="open ."
alias cl="clang++ -Wall -Werror -Wextra -std=c++98 *.cpp"
# alias ctags="`brew --prefix`/bin/ctags"

ZSH_THEME="daveverwer"

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

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export GEM_HOME=~/.gems
