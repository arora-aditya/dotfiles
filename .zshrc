source ~/.personalrc

alias Desktop='cd /Users/adityaarora/Desktop'
alias serve='python3 -m http.server'
alias serve1='python3 -m http.server 8001'
alias serve2='python3 -m http.server 8002'
alias elasticsearch="/Users/adityaarora/Downloads/elasticsearch-7.7.1/bin/elasticsearch ; exit;"

function contest() {   
    cd ~/github/leetcode/leetcode/Contest
    if [ "$1" != "" ]
    then
        mkdir $1
        cd ./template
        cp -r  . "../$1"
        cd ..
        cd $1
    else
      for x in ./* ; do 
        n=${x##*/} &> /dev/null;                # take just the number so that comparisons work 
        [ "$n" -gt "$max" ] && max=$n &> /dev/null;   
      done
      cd $max
    fi # closing statement of if-else block
}

cd() {
  if [[ -f "$1" || -L "$1" ]]; then
    path=$(~/getTrueName "$1")
    builtin cd "$path"
  else
    builtin cd "$@"
  fi
}

eval $(thefuck --alias)

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:$(go env GOPATH)/bin"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
# export PATH="/usr/local/anaconda3/bin:$PATH"  # commented out by conda initialize

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/usr/local/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

alias config='/usr/bin/git --git-dir=/Users/adityaarora/.cfg/ --work-tree=/Users/adityaarora'
