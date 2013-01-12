# Bash login shell configuration.

# Load .profile, containing login, non-bash related initializations.
test -f ~/.profile && source ~/.profile

# Load .bashrc, containing non-login related bash initializations.
test -f ~/.bashrc && source ~/.bashrc
