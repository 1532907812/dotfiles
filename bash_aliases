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


