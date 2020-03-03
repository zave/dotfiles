#!/bin/bash
# Discover which unix/linux distribution we're on
# Purge the default version of vim, along with the configuration files, if they're installed.
# Install vim, tmux
# Copy the new vim and tmux config files from zave's github
#
if [[ "$OSTYPE" == "darwin"* ]]; then
    # mac TESTED PASSED
    brew update && brew install vim tmux
elif [[ -f /etc/lsb-release ]] || [[ -f /etc/debian_version ]] || [[ -f /etc/SUSE-brand ]]; then
    # For some versions of Debian/Ubuntu without lsb_release command TESTED PASSED
    sudo apt-get update && sudo apt-get upgrade -y
    sudo apt-get purge vim -y
    sudo apt-get install vim curl tmux -y
    rm -f ~/.tmux.conf ~/.vimrc
elif [[ -f /etc/redhat-release ]]; then
    # Older Red Hat, CentOS, etc. TESTED PASSED
    sudo yum update -y
    sudo yum remove vim -y
    sudo yum install vim curl tmux -y
    rm -f ~/.tmux.conf ~/.vimrc
elif [[ -f /etc/freebsd-update.conf ]]; then
    # Freebsd TESTED FAILED
    echo "Sorry, this script won't work on this unix / linux distribution."
else
    # Fall back to uname, e.g. "Linux <version>", also works for BSD, etc.
     echo "Sorry, I don't recognive this unix / linux distribution."
fi
# Copy .vimrc and tmux.conf from zave's github
curl -silent -o https://raw.githubusercontent.com/zave/dotfiles/master/.vimrc "~/.vimrc"
curl -silent -o https://raw.githubusercontent.com/zave/dotfiles/master/.tmux.conf "~/.tmux.conf"

