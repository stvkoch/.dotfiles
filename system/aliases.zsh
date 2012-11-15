# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

unamestr=`uname`
alias distro='cat /etc/*-release'

if [ "$unamestr" = Linux ]; then
	alias pbcopy='xsel --clipboard --input'
	alias pbpaste='xsel --clipboard --output'
fi

alias over='cd /servers/gameover2010'
alias cinema='cd /servers/cinema'
alias app='cd /servers/cinema/app'
alias bo='cd /servers/cinema/bo'
alias ws='cd /servers/cinema/ws'



alias start-cinema-git='unlink /servers/cinema;ln -s /servers/cinema-git-olive /servers/cinema; cd /servers/cinema-git-olive; subl .&'
alias start-cinema-svn='unlink /servers/cinema;ln -s /servers/cinema-svn-olive /servers/cinema; cd /servers/cinema-svn-olive; subl .&'

alias random_man='man $(ls /bin /usr/bin | shuf -n 1)'
alias random_man_name='man $(ls /usr/bin | shuf -n 1)| sed -n "/^NAME/ { n;p;q }"'