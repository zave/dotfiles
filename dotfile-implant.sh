#!/bin/bash
# Discover which unix/linux distribution we're on
# Purge the default version of vim, along with the configuration files, if they're installed.
# Install vim, tmux
# Remove config files for vim and tmux, if they're there
# Copy .vimrc and .tmux.conf from zave's github
#
if [[ "$OSTYPE" == "darwin"* ]]; then
    # mac TESTED PASSED
    echo "Hello from darwin"
    brew update
elif [[ -f /etc/lsb-release ]]; then
    # For some versions of Debian/Ubuntu without lsb_release command TESTED PASSED
    sudo apt update
    sudo apt-get purge vim -y
    sudo apt-get install vim curl tmux -y
    rm -f ~/.tmux.conf ~/.vimrc
elif [[ -f /etc/debian_version ]]; then
    # Older Debian/Ubuntu/etc. TESTED PASSED
    sudo apt update
    sudo apt-get purge vim -y
    sudo apt-get install vim curl tmux -y
    rm -f ~/.tmux.conf ~/.vimrc
elif [[ -f /etc/SUSE-brand ]]; then
    # openSUSE TESTED PASSED
    sudo apt update
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
    echo "Sorry, this script won't work on this linux distribution.""
else
    # Fall back to uname, e.g. "Linux <version>", also works for BSD, etc.
    echo "Hello from unknown"
fi
# Copy .vimrc and .tmux.conf from zave's github
curl https://raw.githubusercontent.com/zave/dotfiles/master/.vimrc > ~/.vimrc
curl https://raw.githubusercontent.com/zave/dotfiles/master/.tmux.conf > ~/.tmux.conf

