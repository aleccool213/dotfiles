eval "$(/Users/alec.brunelle/miniconda3/bin/conda shell.fish hook)"

# Add brew to PATH
set -x PATH /opt/homebrew/bin $PATH

# init starship brew package fish integration
starship init fish | source

# init kubectl alias
alias k="kubectl"

## GIT ALIAS
alias gitc="git commit -S -m"
alias gitcp="git commit -m && git push --no-verify"

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true

# init fish 1password cli completions
op completion fish | source

# init kubectl completions
kubectl completion fish | source

# init nice mac os settings
# defaults write com.apple.dock autohide-delay -float 0; defaults write com.apple.dock autohide-time-modifier -int 0;killall Dock

set -x KUBE_EDITOR "code -w"

