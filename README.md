# dotfiles
vim, tmux, bashrc

## Installing

```sh
$ cd ~
$ git clone https://github.com/farskipper/dotfiles.git
$ cd ~/dotfiles
$ cat install.sh

# happy with it?

$ ./install.sh
```

In vim run :PlugInstall

## Notes

### npm install -g without sudo
On debian there is a 'staff' group that is given write perms on `/usr/local/lib/`
```sh
$ sudo usermod -a -G staff $(whoami)
$ sudo chmod g+w /usr/local/lib/node_modules/
```

To find where the global node\_modules dir use this
```sh
$ npm root -g
```

## License
MIT
