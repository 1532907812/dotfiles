alias dkr-img-lsq='docker image ls -q'
alias dkr-img-ls='docker image ls'
alias dkr-img-purge='for im in `dkr-img-lsq`; do docker image rm $im; done'

alias dkr-ps-ls='docker ps'
alias dkr-ps-lsq='docker ps -q'
alias dkr-ps-purge='for p in `dkr-ps-lsq -a`; do docker rm $p --force; done'

alias lxc-img-ls='lxc image ls --format csv'
alias lxc-img-lsq='lxc image ls --format csv -c f'
alias lxc-img-purge='for im in `lxc-img-lsq`; do lxc image delete $im; done'

alias lxc-ps-ls='lxc list --format csv'
alias lxc-ps-lsq='lxc list --format csv -c n'


alias activewin='xdotool getactivewindow'
alias focuswin='xdotool getwindowfocus'
alias get-ndesks='xdotool get_num_desktops'
alias set-ndesks='xdotool set_num_desktops '


alias unmaximize='xdotool key Super+Down'


alias desk-dim='xdotool getdisplaygeometry'
alias r='source ~/.bashrc'
alias desk-height='xdotool getdisplaygeometry | cut -d " " -f 2'
alias desk-width='xdotool getdisplaygeometry | cut -d " " -f 1'


alias win-dim='xdotool getactivewindow getwindowgeometry | tail -1 | cut -d " " -f 4 | tr -s "x" " "'
alias win-height='win-dim | cut -d " " -f 1'
alias win-width='win-dim | cut -d " " -f 2'


#alias win-height='xdotool getactivewindow getwindowgeometry | cut -d " " -f 1'
#alias win-width='xdotool getactivewindow getwindowgeometry | cut -d " " -f 2"'


alias setw-top='xdotool `activewin`'alias xwin-geo='xwininfo -root | grep -geometry | cut -d   -f 4'
alias xwin-geo='xwininfo -root | grep -E "\-geometry" | cut -d " "  -f 4'
alias xwin-sz='xwin-geo | cut -d "+" -f 1'
alias xwin-pos='xwin-geo | cut -d "+" -f 2'
alias xwin-xpos='xwin-pos | cut -d "+" -f 1'
alias xwin-ypos='xwin-pos | cut -d "+" -f 2'
alias xwin-szx='xwin-sz | cut -d "x" -f 1'
alias xwin-szy='xwin-sz | cut -d "x" -f 2'



alias xwin-width='cut -d "x" -f 1 <<< $(xwin-geo)'
alias xwin-height='cut -d "x" -f 2 <<< '



alias win-top-left='setw 0% 0% 50% 50%'
alias win-top-right='setw 50% 0% 50% 0%'
alias win-bottom-right='setw 50% 50% 50% 0%'
alias win-bottom-left='setw 0% 50% 0% 0%'

