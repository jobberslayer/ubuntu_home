# Set up the prompt
#
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUPSTREAM="auto"
export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_HIDE_IF_PWD_IGNORED=1
export GIT_PS1_SHOWUNTRACKEDFILES=1

export RUBYLIB=/home/kevin/github/cfofxn-smarter/libs
export RUBYCONF=/home/kevin/github/cfofxn-smarter/confs

autoload -Uz promptinit
setopt PROMPT_SUBST

PS1='
%F{yellow}┌─%f\
%F{yellow}%f\
%F{black}%K{yellow}%n@%m%b%f%F{magenta}[zsh]%k%f\
%F{yellow}%K{red}%k%f\
%F{black}%K{red}  %~  %k%f\
%F{red}%f
%F{yellow}└─%f\
%F{red}%f\
%F{red} %f\
%F{blue}%f\
%F{white} '

PS2="%F{yellow}└─ %f "

#PS1=$'\n''%F{yellow}┌─%f%F{cyan}%n@%m%b%f%F{magenta}[zsh]%f %~'$'\n''%F{yellow}└─%f  '

export RPROMPT='\
%F{black}%f\
%F{white}%K{black} \
 %D{%L:%M%p  %m/%d} %k%f\
%K{black}$(__git_ps1 "(%s)")%k\
%F{black}%f'

setopt histignorealldups sharehistory

#setup dynamic terminal title
function precmd () {
    echo -ne "\033]0;`pwd`\007"
}

function preexec () {
    printf "\033]0;%s\007" "$1"
}

# Use vi keybinding 
bindkey -v

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

. /usr/share/autojump/autojump.sh

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

#source ~/.zplug/init.zsh
#zplug "dracula/zsh", as:theme

# ALIASES

#alias ps2="ps auxw|grep -v grep|grep"
alias ls='ls -FA'
alias ll='ls -lAh|batcat -l Sass'

myps() {
  ps auxw|grep -v grep|grep $1|batcat -l Sass
}

myapt_search() {
  sudo apt search $1|batcat -l Sass
}

alias myapt_install="sudo apt install"

alias myjim="rvm gemset use"
alias myexternal_ip='wget http://ipinfo.io/ip -qO -'
alias myto_csv='libreoffice --headless --convert-to csv'
alias myupdate='sudo apt-get update; sudo apt-get upgrade; sudo apt-get dist-upgrade; need_reboot.sh'
alias myless='less -M +Gg'
alias mycal='ncal -b -3'
alias mydiff='diffuse'
#alias mygittoken='xclip -sel c < ~/Dropbox/.git-token'
alias mygittoken='lpass show "Git Token" -c --password'
alias myrdppasswords='lpass show "RDP/Remmina Login information"'
alias myfinlogicpassword='lpass show "Finlogic Login" -c --password'
alias mytime='/usr/bin/time -f "%E"'

alias mymntgoogledrive='google-drive-ocamlfuse'
alias mycreatemnt4googledrive='google-drive-ocamlfuse -label label'

alias mymap='xmodmap ~/ubuntu_home/.Xmodmap_popos'

alias myclock='figlet -w 80 `date "+%I:%M%p %m/%d"`'
alias mysystem='neofetch'
alias myfiles='gdu'
alias mytop='bpytop'
alias myspeed='speedtest'
alias myfm='thunar $1'

alias mystart-vpn='sudo openvpn --config "$HOME/openvpn/FinLogic OpenVPN/FinLogicProd.ovpn"'

alias mysleepy-time='xset dpms force off'

alias mymontage='rm out.jpg; montage -geometry 1600x1600 *.jpg out.jpg'

alias mybattery='acpi -V|grep -i battery'

alias myopen='xdg-open'
alias mymake_excel='unoconv --format xls'

alias myweather='curl "http://wttr.in?u"'

alias mytmux-cheat='cat $HOME/Dropbox/tmux/tmux-cheat-sheet.txt'

alias xcomp='xcompmgr -c -l0 -t0 -r0 -o.00'

alias mycompton='picom -CGb&'

alias myhotkeys="grep bind .i3/config|grep -v "^#"|sed 's/bind\w*//'|rofi -dmenu"

alias myfrontrefresh='sudo fc-cache -f -v'

alias mydeckcreator_png="montage -tile 10x7 -geometry 366x510 *.png out.jpg"
alias mydeckcreator_jpg="montage -tile 10x7 -geometry 366x510 *.jpg out.jpg"

# dir shortcuts
export mydir_lf_costsplit="/home/kevin/googledrive-finlogic/finlogic/`date +%Y`/LiteFighter/Cost splitting"

# /ALIASES

PATH="$PATH:$HOME/bin:$HOME/.local/bin:$HOME/.cargo/bin"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
