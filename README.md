# dotfiles
vim, tmux, bashrc, and swapping ESC and CAPS keys

## Installing

```sh
$ cd ~
$ git clone https://github.com/mrwrite/dotfiles.git
$ cd ~/dotfiles
$ cat install.sh
```
Take a look at what the `install.sh` script is going to do and make sure you are happy with it before your run it.
```sh
$ ./install.sh
```

## Why
Mostly for myself. But please feel free to read through it, copy paste, fork it, or whatever.

## Notes

### npm install -g without sudo
On debian there is a 'staff' group that is given write perms on `/usr/local/lib/`
```sh
$ sudo usermod -a -G staff $(whoami)
$ sudo chmod g+w /usr/local/lib/node_modules/
```

## License
MIT
