export PATH=/usr/local/bin:$PATH
source /usr/local/bin/virtualenvwrapper.sh

alias fuck='sudo $(history -p \!\!)'
alias l="ls -hal"
alias hosts="sudo nano /etc/hosts"

# add git branch
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
# export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export PS1="\u@:\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
