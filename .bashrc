#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias \
	ka="killall" \
	g="git" \
	sdn="sudo shutdown -h now" \
	f="$FILE" \
	e="$EDITOR" \
	v="$EDITOR" \
	p="sudo pacman" \
	ll="ls -l" \
    upgrade="sudo pacman -Syu"
alias ls='ls --color=auto'

PS1="\[\033[01;36m\]\w\n\033[33m\]>\[\033[00;00m "
#PS1="\[\033[01;36m\]\W\[\033[00m\]\> "
#PS1='[\u@\h \W]\$ '
#PS1="\e[4;33m[\u@\h \W]$ " #underline yellow

#PS1="\[\e[32m\][\[\e[m\]\[\e[31m\]\u\[\e[m\]\[\e[33m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\]:\[\e[36m\]\w\[\e[m\]\[\e[32m\]]\[\e[m\]\[\e[32;m\]\\$\[\e[m\] "
#PS1='\[\033[01;32m\][\u@\h\[\033[01;37m\] \W\[\033[01;32m\]]\$\[\033[00m\] '
#PS1="\[\033[01;37m\]\W\[\[\033[00;32m\]\> "
#PS1="\[\033[01;36m\]\W\[\[\033[00;37m\]\> "
#PS1='\[\033[00;35m\]\u\[\033[00m\]@\[\033[00;35m\]\H\[\033[00m\]:\[\033[00;33m\]\W\[\033[00m\] \$\[\033[00;34m '
