# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
zle_highlight=(fg=white)


# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history



# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='vim'
 fi

# aliases
alias camera='ffplay -f video4linux2 -input_format nv12 -timestamps abs -use_libv4l2 1 -i /dev/video0 -s 480x240'
alias soundfix='sudo bash /usr/local/bin/soundfix'
alias restart-time='sudo systemctl restart systemd-timesyncd.service'
alias spotify-no-ad='LD_PRELOAD=/usr/local/lib/spotify-adblock.so spotify'
alias asianet="python3 ~/.scripts/public/asianet.py"
alias get_ip='dig +short myip.opendns.com @resolver1.opendns.com'
alias sus='sudo systemctl suspend'
alias singlemon='xrandr --output eDP-1-1 --off --output HDMI-0 --primary --mode 1920x1080 --rate 75'
alias doublemon='xrandr --output eDP-1-1 --mode 1366x768 --output HDMI-0 --primary --mode 1920x1080 --rate 75 --right-of eDP-1-1'
alias flameshot0='flameshot screen -n 0 -p ~/pictures '
alias flameshot1='flameshot screen -n 1 -p ~/pictures '
alias pingtest='bash ~/.scripts/csgoping.sh'

if [ "$(command -v exa)" ]; then
    alias ls='exa -hglS'
    alias la='exa -ahglS'
fi

if [ "$(command -v bat)" ]; then
    export MANPAGER="sh -c 'col -bx | bat -l man -p'"
    alias cat="bat -pp"
    alias ca=bat
fi

#eval "$(starship init zsh)"

export EDITOR='nvim'
export VISUAL='nvim'

source /home/shady/.config/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /home/shady/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /home/shady/.config/zsh/plugins/dotbare/dotbare.plugin.zsh

# Key bindings
bindkey '^F' autosuggest-accept
bindkey '^[[A' up-line-or-search                                                
bindkey '^[[B' down-line-or-search
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word
#bindkey '^I' fzf-completion

#export LC_ALL=en_IN.UTF-8
#export LANG=en_IN.UTF-8



[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
