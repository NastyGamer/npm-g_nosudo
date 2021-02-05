npm-g_nosudo
============

Allows you to install npm-packages globally without using sudo

Inspired by a day trying to sort various machines out on our system to run code nicely.

and this [Stackoverflow answer](http://stackoverflow.com/a/13021677)

## Usage:

Download the script, run it:
```
./npm-g-nosudo.sh
```
or
```
wget -O- https://raw.githubusercontent.com/NastyGamer/npm-g_nosudo/master/npm-g-nosudo.sh | sh
```
## Important

After updating your environment files, you will need to [source](http://ss64.com/bash/source.html) the corresponding file before your npm binaries will be found in the current terminal session, e.g. for bash:
```
source ~/.bashrc
```
or just open an new terminal session.

The script may not play nicely with [Node Version Manager](https://github.com/creationix/nvm) so it will not run if if finds the script installed.

## License

MIT © [Glen Pike](http://glenpike.co.uk)
