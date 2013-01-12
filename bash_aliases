# Bash aliases configuration.

# Make some possibly destructive commands more interactive.
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

# Add some easy shortcuts for formatted directory listings and add a touch of color.
alias ll='ls -lFh'
alias la='ls -alFh'
alias ls='ls -F'
alias l='ls -CFh'

# Make grep more user friendly by highlighting matches
# and exclude grepping through .svn folders.
alias grep='grep --color=auto --exclude-dir=\.svn --exclude-dir=\.hg --exclude-dir=\.git'
alias fgrep='fgrep --color=auto --exclude-dir=\.svn --exclude-dir=\.hg --exclude-dir=\.git'
alias egrep='egrep --color=auto --exclude-dir=\.svn --exclude-dir=\.hg --exclude-dir=\.git'
