starship init fish | source

source ~/.iterm2_shell_integration.(basename $SHELL)
    
# google cloud sdk
set -g -x "CLOUDSDK_PYTHON" "/usr/local/opt/python@3.9/bin/python3"
set -g fish_user_paths "/usr/local/opt/python@3.9/bin" $fish_user_paths
if [ -f '/Users/alecbrunelle/google-cloud-sdk/path.fish.inc' ]; . '/Users/alecbrunelle/google-cloud-sdk/path.fish.inc'; end

## GIT ALIAS
alias gitc="git commit -S -m"
alias gitcp="git commit -m && git push --no-verify"

## BAT ALIAS
alias cat="bat"

#DENO + ASDF
set -x DENO_INSTALL ~/.asdf/shims/
fish_add_path $DENO_INSTALL/bin

# RASPBERRY PI
# alias caspian_pi=""

# UNITY NPM AUTH TOKEN
set -x NPM_GITHUB_TOKEN $(op item get zixa6vzwpy6mcgokzuuhhh3pci --fields label=credential)

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true

# go tooling
set -x GOPATH $HOME/go
set -x PATH $GOPATH/bin:$PATH

# gcp-infra tools

# asdf
source ~/.asdf/asdf.fish

# 1password cli completions
op completion fish | source
