# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022
# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# include sbin in PATH
if [ -d "/sbin" ] ; then
    PATH="/sbin:$PATH"
fi
if [ -d "/usr/sbin" ] ; then
    PATH="/usr/sbin:$PATH"
fi
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
#export JAVA_HOME="/home/vcrini/downloads/jdk1.7.0_71"
#export JAVA_HOME="/home/vcrini/downloads/jre1.7.0_51"
#export JAVA_HOME="/home/vcrini/downloads/jre1.8.0"
#export JAVA_HOME="/home/vcrini/downloads/jre1.8.0_25"
#export JAVA_HOME="/home/vcrini/downloads/jdk1.8.0_20"
export ANDROID_HOME=$HOME/downloads/android-sdk-linux
export PATH=$JAVA_HOME/bin:$PATH:$HOME/Dropbox/personale.git/src/bin:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export VIMCLOJURE_SERVER_JAR="/home/vcrini/downloads/server-2.3.6.jar"
export EDITOR=vim

PATH="/usr/local/bin/:/usr/local/sbin:$PATH"
#path for chromedriver
#PATH="/home/vcrini/documents/env/robot/local/node_modules/appium/build/chromedriver/linux/:$PATH"
. ~/.bash_aliases
#aliased capslock to CTRL
xmodmap -e 'keycode 66 = Control_L'
xmodmap -e 'clear Lock'
xmodmap -e 'add Control = Control_L'
#aliasing colorized subversion
