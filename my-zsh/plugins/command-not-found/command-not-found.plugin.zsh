# Uses the command-not-found package zsh support
# as seen in http://www.porcheron.info/command-not-found-for-zsh/
# this is installed in Ubuntu

if [ "$unamestr" = Linux ]; then
   source /etc/zsh_command_not_found
fi

