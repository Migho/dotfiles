# Use powerline plugin
powerline-daemon -q
. /usr/share/powerline/bindings/zsh/powerline.zsh

# Launch fastfetch
fastfetch

# Set up Node Version Manager
source /usr/share/nvm/init-nvm.sh

# Aliases
alias reload="source=~/.zshrc"
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias multipull="find . -maxdepth 1 -name '*' | xargs -I{} git -C {} pull"
alias multiyarn="find . -maxdepth 1 -name '*' | xargs -P0 -I{} sh -c 'cd {} && yarn'"
alias multiyarn="find . -maxdepth 1 -name '*' | xargs -P0 -I{} sh -c 'cd {} && yarn start'"
alias lz="du --summarize --human-readable *"
alias mvhere="find ./* -type f -exec mv {} . \;"
alias stopDocker="docker stop $(docker ps -a -q)"

# Node version manager
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

