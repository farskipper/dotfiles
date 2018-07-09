PS1='${debian_chroot:+($debian_chroot)}\u\[\033[00;35m\]@\[\033[00m\]\h:\[\033[01;34m\]\w\[\033[00m\]\$ '

if [ -d $HOME/bin ]; then
  export PATH="$HOME/bin:$PATH"
fi

if [ -n "$DISPLAY" ]; then
  xset b off
fi

##########################################################################
# utils
alias la='ls -lah'

alias sagi='sudo apt-get install'
alias sagu='sudo apt-get update'
alias sagg='sudo apt-get upgrade'
alias sags='sudo apt-cache search'
alias sag-purge-all='sudo dpkg --purge `dpkg --get-selections | grep deinstall | cut -f1`'

alias supergrep='grep -rn -C 5 --color=auto --exclude-dir=node_modules --exclude-dir=.git --exclude-dir=.svn --exclude-dir=.meteor --exclude-dir=elm-stuff'

alias rmsvn='find . -name .svn -exec rm -rf {} \;'

alias du-dirs='du -sch .[!.]* * | sort -h'

alias ife='sudo ifdown wlan0 && sudo ifup eth0'
alias ifer='sudo ifdown eth0 && sudo ifup eth0'
alias ifw='sudo ifdown eth0 && sudo ifup wlan0'
alias ifwr='sudo ifdown wlan0 && sleep 1 && sudo ifup wlan0'
alias ifusb='sudo ifconfig usb0 up && sudo dhclient usb0'

#find . -type d -exec chmod 755 {} \; && find . -type f -exec chmod 644 {} \;

alias to-clipboard='xclip -i -selection clipboard'

alias swapescape='setxkbmap -option caps:swapescape'

alias git-undo='git reset --soft HEAD~ && git reset -- .'
# git clean -ndX - show files that are ignored, drop 'n' to remove them
# git clean -nd - show files that are ignored or untracked
# git reset --hard @{u} - drop local commits (reset to upstream)
# sed -i 's/foo/bar/g' *
# grep -rl 'foo' . | xargs sed -i 's/foo/bar/g'

##########################################################################
# monitors
alias xr-single='xrandr --output eDP-1 --mode 1920x1080 --output HDMI-1 --off --output HDMI-2 --off'
alias xr-dhl='xrandr --output eDP-1 --off  --output HDMI-1 --mode 1920x1080 --output HDMI-2 --mode 1920x1080 --left-of HDMI-1'

##########################################################################
## vim

#fix C-s and C-q
stty -ixon
