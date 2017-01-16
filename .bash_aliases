#Tmux aliases
alias ta='tmux attach -t'
alias tnew='tmux new -s'
alias tls='tmux ls'
alias tkill='tmux kill-session -t'

#Configs editing
alias et='vim ~/.tmux.conf'
alias eb='vim ~/.bashrc'
alias ea='vim ~/.bash_aliases'
alias ev='vim ~/.vimrc'

#Git
alias g='git'

#Workflow
alias gusacow='cd /media/breta/OS/Users/Breta/Dokumenty/CompetitiveProgramming/USACO'
alias gusaco='cd ~/Documents/competitive-programming/USACO'

goGit () {
	cd ~/Documents/Github
	if [ ! -z "$1" ]
	then
		cd $1
	fi
}
alias gg=goGit
