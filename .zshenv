# .zshenv is sourced on all invocations of the shell, unless the -f option is set.
# It should contain commands to set the command search $PATH, plus other important environment variables.

# .zshenv → .zprofile → .zshrc → .zlogin

# export PATH=/opt/homebrew/bin:$PATH
# eval "$(/opt/homebrew/bin/brew shellenv)"

export XDG_CONFIG_HOME="$HOME/.config"


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

# export PATH="$HOME/.jenv/bin:$PATH"

export PATH="$PATH:/opt/homebrew/opt/python@3.13/libexec/bin"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/stefan/.cache/lm-studio/bin"

. "$HOME/.local/bin/env"

# export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"

export PATH="$PATH:$HOME/.slack/bin"

export LLM_KEY=NONE

# INFO: LLMs
export OLLAMA_API_BASE=http://127.0.0.1:11434

export PATH="$PATH:/Users/stefan/.nvm/versions/node/v22.17.1/bin"
