

# added in case of other bashrc
if [ -f /etc/bashrc ]; then
	source /etc/bashrc
fi


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
export PS1="\[\e[37;1m\][\u@\h] \w \$ \[\e[0m\]"
#export PATH=${PATH}:~/enarc
export PATH=${PATH}:~/dev/shellscripts
export dev=~/dev/adt/list
export devtemp=~/dev/templates
export EDITOR=vim;
export VISUAL=vim;


# [*] alias
# ls commands
alias ls="/bin/ls --color=auto \
	--group-directories-first --sort=extension"
alias ll="/bin/ls -ao --color=auto \
	--group-directories-first --sort=extension"
# pages ls (scrolling ls)
alias lsp="/bin/ls -ao --color \
	--group-directories-first --sort=extension |
	less -r"
# follow and expand symbolic links
alias cdd='cd -P'
# go up n levels
function cd_up() {
	cd $(printf "%0.s../" $(seq 1 $1));
	# this is a trick of parameter expansion.
	# printf repeats for every parameter not matched directly
}
alias cd.='cd_up'


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
change_ls_color "*.zip" "01;31"
change_ls_color "*.7z" "01;31"

export LS_COLORS

# remove function change_ls_color to make it only local
unset -f change_ls_color



# [*] binds
# not in use because of the vi mode enabled in .inputrc.
# the .inputrc vi mode apparently has its own tab completion.
# still included just in case...
#bind "TAB:menu-complete"
#bind "set show-all-if-ambiguous on"

