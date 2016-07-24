#Tmux aliases
alias ta='tmux attach -t'
alias tnew='tmux new -s'
alias tls='tmux ls'
alias tkill='tmux kill-session -t'

#Configs editing
alias et='vi ~/../usr/etc/tmux.conf'
alias ez='vi ~/.zshrc'
alias ea='vi ~/.oh-my-zsh/lib/alias.zsh'
alias ev='vi ~/../usr/share/vim'

#Workflow
alias pro='cd ~/storage/shared/Projects'

#Backup (bu) dot files
alias createbu='cp ~/../usr/share/vim/vimrc ~/dotfiles/vimrc_bu; cp ~/.zshrc ~/dotfiles/zshrc_bu; cp ~/.oh-my-zsh/lib/alias.zsh ~/dotfiles/alias_bu.zsh; cp ~/../usr/etc/tmux.conf ~/dotfiles/tmux_bu.conf'
alias pushbu='cd ~/dotfiles && ! git commit -a -m "commit" && git push'
