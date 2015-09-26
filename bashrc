PS1='${debian_chroot:+($debian_chroot)}\u\[\033[00;35m\]@\[\033[00m\]\h:\[\033[01;34m\]\w\[\033[00m\]\$ '

if [ -d $HOME/bin ]; then
  export PATH="$HOME/bin:$PATH"
fi

##########################################################################
# utils
alias la='ls -lah'

alias sagi='sudo apt-get install'
alias sagu='sudo apt-get update'
alias sagg='sudo apt-get upgrade'
alias sags='sudo apt-cache search'

alias supergrep='grep -rn -C 5 --color=auto --exclude-dir=node_modules --exclude-dir=.git  --exclude-dir=.svn'

alias rmsvn='find . -name .svn -exec rm -rf {} \;'

##########################################################################
# monitors
alias xr-single='xrandr --output eDP1 --mode 1920x1080 --output HDMI1 --off --output HDMI2 --off'
alias xr-dual='xrandr --output eDP1 --mode 1920x1080 --output HDMI1 --mode 1920x1080 --output HDMI2 --off'
alias xr-dual-hdmi='xrandr --output eDP1 --off --output HDMI1 --mode 1920x1080 --output HDMI2 --mode 1920x1080 --right-of HDMI1'
alias xr-tri='xrandr --output eDP1 --mode 1920x1080 --output HDMI1 --mode 1920x1080 --left-of eDP1 --output HDMI2 --mode 1920x1080 --right-of eDP1'
