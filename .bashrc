#
# .bashrc file for CNS UNIX accounts
#
#
# keep the following line present so your account will work in
# the CNS UNIX environment
#


# [*] sources

# the following source was depreciated around TIME: 2015-07-10 22:42:00.
# the file at location no longer exists
# source /users/default/.bashrc


# [*] exports
#export TERM=xterm-256color
export TERM=screen-256color-s
export PS1="\e[37;1m[\u@\h] \w \$ \e[0m"
#export PATH=${PATH}:~/enarc
export PATH=${PATH}:~/dev/shellscripts
export dev=~/dev/adt/list
export devtemp=~/dev/templates

# [*] binds
bind "TAB:menu-complete"
bind "set show-all-if-ambiguous on"

# [*] alias
# common commands
alias ls="/bin/ls --color=auto \
	--group-directories-first --sort=extension"
alias ll="/bin/ls -ao --color=auto \
	--group-directories-first --sort=extension"
# alias cd='cd -P'
# start vim sessions
alias vims='vim -S'
# start project
alias dev='cd $dev;vs'
# tmux
alias tmux='tmux -2 -u'
# git
alias g='git'
alias gs='git status'
alias gcom='git commit'
alias gadd='git add'
alias gaa='git add --all'
alias gche='git checkout'
alias gdif='git diff'
alias glog='git log --oneline'
alias ghis='git log --oneline --graph --all --decorate --abbrev-commit'

# --pretty=format:"%h %ad | %s%d [%an]" \
#	--graph --date=short'

# [*] martins stuff
export LANG=C
export LC_CTYPE=C



# [*] ls colors
# change colors of ls output
function change_ls_color() {
if [[ $LS_COLORS == *$1* ]]; then
	LS_COLORS=$(echo $LS_COLORS | \
		sed -r "s/(:"$1"=)[^:]*/\1"$2"/")
else
	LS_COLORS=$LS_COLORS$1=$2:
fi
}

# directories
change_ls_color "di" "01;34"
# executables
change_ls_color "ex" "01;32"
# linked
change_ls_color "ln" "01;36"

change_ls_color "tw" "01;34"
change_ls_color "ow" "01;34"

export LS_COLORS

# remove function change_ls_color to make it only local
unset -f change_ls_color



