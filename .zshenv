# .zshenv is sourced on all invocations of the shell, unless the -f option is set.
# It should contain commands to set the command search $PATH, plus other important environment variables.

# .zshenv → .zprofile → .zshrc → .zlogin

# export PATH=/opt/homebrew/bin:$PATH
# eval "$(/opt/homebrew/bin/brew shellenv)"

export XDG_CONFIG_HOME="$HOME/.config"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

export PATH="$HOME/.jenv/bin:$PATH"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/stefan/.cache/lm-studio/bin"

. "$HOME/.local/bin/env"

# export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"
