export $(envsubst < $HOME/.env)

export PATH="$HOME/.local/bin:$PATH"
. "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh" # for avoiding home-manager controlled shell env vars

