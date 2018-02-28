export PATH=$PATH:/Applications/MAMP/Library/bin

## Go 環境設定
if [ -x "`which go`" ]; then
    export GOPATH=$HOME/.go
    export PATH=$PATH:$GOPATH/bin
fi

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
