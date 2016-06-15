# Run time configuration.

# Ensure user-installed binaries take precedence.
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Locale settings.
export LC_ALL=de_DE.UTF-8
export LANG=de_DE.UTF-8

# Customize command prompt with current git or mercurial branch.
my_vcprompt() {
  hg prompt $'\e[00mon \e[31m{hg:{branch}}{status} {at {bookmark}}' 2> /dev/null
  if [ -n "${GIT_COMPLETION}" ]; then
    __git_ps1 '\e[00mon \e[31mgit:%s'
  fi
}
export MY_BASEPROMT='\e[32m\u \e[00min \e[36m\w $(my_vcprompt)\e[00m'
export PS1="${MY_BASEPROMT}
$ "

# Activate Ruby RVM, if it exists.
if [ -d $HOME/.rvm/bin ]; then
  # Add RVM to PATH for scripting
  export PATH=$PATH:$HOME/.rvm/bin
  [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
fi

# Activate virtualenvwrapper, if it exists.
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
  WORKON_HOME=$HOME/venvs
  VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
  source /usr/local/bin/virtualenvwrapper.sh
fi

# virtualenv should use Distribute instead of legacy setuptools.
export VIRTUALENV_DISTRIBUTE=true
# Centralized location for new virtual environments.
export PIP_VIRTUALENV_BASE=$HOME/venvs
# pip should only run if there is a virtualenv currently activated.
#export PIP_REQUIRE_VIRTUALENV=true
# cache pip-installed packages to avoid re-downloading.
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

# Allow pip to system.
#syspip(){
#   PIP_REQUIRE_VIRTUALENV="" pip "$@"
#}

function tabname {
  printf "\e]1;$1\a"
}

function winname {
  printf "\e]2;$1\a"
}

