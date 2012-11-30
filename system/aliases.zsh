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

alias lsg='ls -lsa|grep'

unamestr=`uname`
alias distro='cat /etc/*-release'

if [ "$unamestr" = Linux ]; then
	alias pbcopy='xsel --clipboard --input'
	alias pbpaste='xsel --clipboard --output'
fi

#depencie coreutils

alias random_man="man $(ls /bin /usr/bin | perl -MList::Util -e 'print List::Util::first { defined($_) } List::Util::shuffle(<>)')"
alias random_man_name='random_man|sed -n -e "/^NAME/{n;p;q;}"'
