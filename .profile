export TERM="xterm-color"
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export NDK_BUILD_OPTION=-j8

alias ll="ls -lvh"
alias lan="sudo ifconfig en0 up; sudo ifconfig en1 down"
alias wifi="sudo ifconfig en0 down; sudo ifconfig en1 up"

alias device="source device.sh"
alias go="source go.sh"
alias applog="source applog.sh"

PS1="\[\033[01;32m\]\u@\h \[\033[01;34m\]\W \$\[\033[00m\]"

#svn configure
SVN_EDITOR=/usr/bin/vim
export SVN_EDITOR

##
# Your previous /Users/bart0724/.profile file was backed up as /Users/bart0724/.profile.macports-saved_2012-11-01_at_17:04:01
##

# MacPorts Installer addition on 2012-11-01_at_17:04:01: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=~/dev/adt-bundle-mac-x86_64/sdk/platform-tools:$PATH
export PATH=~/dev/adt-bundle-mac-x86_64/sdk/tools:$PATH
#export PATH=~/dev/android-ndk-r8d:$PATH
#export PATH=~/dev/android-ndk-r10c:$PATH
#export PATH=~/dev/android-ndk-r10e:$PATH
export PATH=~/dev/android-ndk-r12b:$PATH
#export PATH=~/dev/android-ndk-r8d/toolchains/arm-linux-androideabi-4.7/prebuilt/darwin-x86/bin:$PATH
export PATH=~/work/hoffice9/libhsp/tools:$PATH
export PATH=~/tools:$PATH
export PATH=~/bin:$PATH

#export DYLD_LIBRARY_PATH=/Users/bart0724/work/tfo/tfonc/project/TfoCommonQLib-build-desktop-Debug:/Users/bart0724/work/tfo/tfonc/project/TfoDrawingQLib-build-desktop-Debug:/Users/bart0724/work/tfo/tfonc/project/TfoDrawingCtrlQLib-build-desktop-Debug:/Users/bart0724/work/tfo/tfonc/project/TfoDrawingFilterQLib-build-desktop-Debug:/Users/bart0724/work/tfo/tfonc/project/TfoCtrlQLib-build-desktop-Debug:/Users/bart0724/work/tfo/tfonc/project/TfoFilterQLib-build-desktop-Debug:/Users/bart0724/work/tfo/tfonc/project/TfoNiQLib-build-desktop-Debug:/Users/bart0724/work/tfo/tfonc/project/TfoWriteCtrlQLib-build-desktop-Debug:/Users/bart0724/work/tfo/tfonc/project/TfoWriteFilterQLib-build-desktop-Debug:/Users/bart0724/work/tfo/tfonc/project/TfoWriteModelQLib-build-desktop-Debug:/Users/bart0724/work/tfo/tfonc/project/TfoExternalQLib-build-desktop-Release
# Finished adapting your PATH environment variable for use with MacPorts.

# distcc configure
#. ndk-build-distcc-configure


##
# Your previous /Users/bart0724/.profile file was backed up as /Users/bart0724/.profile.macports-saved_2016-01-20_at_15:16:27
##

# MacPorts Installer addition on 2016-01-20_at_15:16:27: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

