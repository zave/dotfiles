## We're gonna make this a script. Complete with OS detection.
## Dotfile Implants - These commands will install and configure as advertised
## vimmux-implant:
## TODO:
- [ ] Run this script via Chef

```python
bash -c "$(wget -O - https://raw.githubusercontent.com/zave/dotfile-implants/master/vimmux-implant)"
```
Or
```python
echo '{ exec </dev/tty;wget -O - https://raw.githubusercontent.com/zave/dotfile-implants/master/vimmux-implant; }' | bash
```
## vimmuxinator-implant
Installs and configures vim, tmux and tmuxinator. A work in progress.
```python
bash -c "$(wget -O - https://raw.githubusercontent.com/zave/dotfile-implants/master/vimmuxinator-implant)"
```
Or
```python
echo '{ exec </dev/tty;wget -O - https://raw.githubusercontent.com/zave/dotfile-implants/master/vimmuxinator-implant.sh; }' | bash
```
## gitbashrc-implant
Installs git and prettifies your git directory prompt. A work in progress.
```python
bash -c "$(wget -O - https://raw.githubusercontent.com/zave/dotfile-implants/master/bashrc.git-implant)"
                     
```
Or
```python
echo '{ exec </dev/tty;wget -O - https://raw.githubusercontent.com/zave/dotfile-implants/master/bashrc.git-implant; }' | bash
```
