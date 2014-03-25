#!/bin/sh


function ff { osascript -e 'tell application "Finder"'\
 -e "if (${1-1} <= (count Finder windows)) then"\
 -e "get POSIX path of (target of window ${1-1} as alias)"\
 -e 'else' -e 'get POSIX path of (desktop as alias)'\
 -e 'end if' -e 'end tell'; };\

function cdff { pushd "`ff $@`"; };

function pwdff { echo -ne "`ff $@`" | pbcopy; };

function touchff {
	echo " ## touch in $(ff)/$1 ##"
	touch $(ff)/$1
};

function stop-spotlight {
	launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist
};