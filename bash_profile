# Bash login shell configuration.

# Load .profile, containing login, non-bash related initializations.
test -f ~/.profile && source ~/.profile

# Load .bashrc, containing non-login related bash initializations.
test -f ~/.bashrc && source ~/.bashrc

test -f ~/.apikeys/include.sh && source ~/.apikeys/include.sh


test -f /Volumes/Work/Configurations/Customers/propertyshelf.sh  && source /Volumes/Work/Configurations/Customers/propertyshelf.sh

test -f ~/.ansible_rc && source ~/.ansible_rc
