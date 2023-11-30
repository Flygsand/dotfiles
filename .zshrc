export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/.oh-my-zsh-custom"

ZSH_THEME="dracula"
ZSH_COLORIZE_TOOL="chroma"
ZSH_COLORIZE_STYLE="dracula"
export FZF_BASE="/usr/local/opt/fzf"
export FZF_DEFAULT_COMMAND="fd --type f --strip-cwd-prefix"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

if [ "$COLORTERM" = "truecolor" ] || [ "$COLORTERM" = "24bit" ]; then
  ZSH_COLORIZE_CHROMA_FORMATTER="terminal16m"
elif [ "$TERM" = "xterm-256color" ]; then
  ZSH_COLORIZE_CHROMA_FORMATTER="terminal256"
fi

zstyle ':omz:update' mode disabled
zstyle ':omz:*' aliases no
zstyle ':omz:lib:theme-and-appearance' aliases yes
zstyle ':omz:plugins:colorize' aliases yes
zstyle ':omz:plugins:iterm2' shell-integration yes
plugins=(asdf colored-man-pages colorize dirhistory fzf gitfast gradle iterm2 mvn thefuck zsh-autosuggestions zsh-syntax-highlighting)
source "$ZSH/oh-my-zsh.sh"

export PATH="$HOME/.go/bin:$PATH"
export GOPATH="$HOME/.go"

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

unsetopt autocd
