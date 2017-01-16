alias vi='nvim'
#Tmux aliases
alias ta='tmux attach -t'
alias tnew='tmux new -s'
alias tls='tmux ls'
alias tkill='tmux kill-session -t'

#Configs editing
alias et='vi ~/../usr/etc/tmux.conf'
alias ez='vi ~/.zshrc'
alias ea='vi ~/.oh-my-zsh/lib/alias.zsh'
alias ev='vi ~/../usr/share/vim/vimrc'
alias en='vi ~/.config/nvim/init.vim'

#Workflow
alias pro='cd ~/storage/shared/Projects'

#Backup (bu) dot files
alias createbu='cp ~/.config/nvim/init.vim ~/dotfiles/init.vim;cp ~/../usr/share/vim/vimrc ~/dotfiles/vimrc; cp ~/.zshrc ~/dotfiles/zshrc; cp ~/.oh-my-zsh/lib/alias.zsh ~/dotfiles/alias.zsh; cp ~/../usr/etc/tmux.conf ~/dotfiles/tmux.conf'
alias pushbu='cd ~/dotfiles && git add -A && git commit -m "auto backup" && git push; cd -'
