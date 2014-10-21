
set fish_greeting ""

# add homebrew, mybin, mosml, and latex to the path
set PATH /usr/local/bin /usr/mybin /usr/local/share/npm/bin $PATH
set PATH $PATH /usr/local/mosml/bin /usr/texbin
set PATH $PATH /usr/local/Cellar/ruby/2.1.0/bin
set PATH $PATH /usr/bin/depot_tools
set PATH $PATH /usr/local/sbin
set PATH $PATH /Applications/Racket\ v5.3.6/bin
set PATH $PATH ~/.cabal/bin
set PATH $PATH /usr/local/opt/ruby/bin
set -g EDITOR vim

# general aliases
alias src     ". ~/.config/fish/config.fish"
alias cl      "clear"
alias lx      "ssh lx"                          # tufts linux server
alias rv      "ssh rivendell"                   # general ec2 server
alias elrond  "ssh elrond"                      # general ec2 server
alias tu      "top -u"
alias py      "python"
alias vf      "vim ~/.config/fish/config.fish"
alias c       "ssh c"                           # chromatome rails server

# git aliases
alias gs     "git status"
alias ga     "git add"
alias gc     "git commit"
alias gpr    "git pull --rebase"

# less danger
alias rm    "rm -i"

# environment variables
set -x ECHO_NEST_API_KEY    "K6YXYZAVDAHT4RH4B"
set -x MINGSAY_PATH         "~/Desktop/mingsay"

# load jump
j

