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

if [ "$unamestr" = Linux ]; then
	alias pbcopy='xsel --clipboard --input'
	alias pbpaste='xsel --clipboard --output'
fi


alias over='cd /servers/gameover2010'
alias cinema='cd /servers/cinema'
alias app='cd /servers/cinema/app'
alias bo='cd /servers/cinema/bo'
alias ws='cd /servers/cinema/ws'