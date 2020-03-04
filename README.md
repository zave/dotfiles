# Vim and Tmux installation and configuration for UN*X OSs
This script will do the following:
1. Detect the distribution.
2. Purge default version of vim, if present.
3. Install vim and tmux.
4. Copy zave's preferred configuration for vim and tmux, from script directory.

Usage:
1. Look at the Vagrantfile and decide which distribution you want to play with.
2. Uncomment the one you want. 
3. Run `vagrant <distribution-of-your-choice>`

Works with:
- [x] ubuntu-18.04
- [ ] debian-10
- [ ] centos-7.6
- [ ] freebsd-11.3
- [ ] opensuse-leap-15.1 
- [ ] fedora-31
