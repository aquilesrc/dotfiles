function start_tmux
    if not set -q TMUX
        tmux attach -t default 2>/dev/null; or tmux new -s default
    end
end 

if status is-interactive
    start_tmux
end

bind yy fish_clipboard_copy
bind Y fish_clipboard_copy
bind p fish_clipboard_paste

alias v='nvim'
alias ls='eza'
alias ll='eza -l'
alias la='eza -a'
alias lla='eza -la'
alias update='sudo pacman -Syu'
