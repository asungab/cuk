#!/bin/sh

sudo apt-get install screen -y
screen

COUNTER=20
until [  $COUNTER -lt 10 ]; do
 
TOKEN="9dfc53ad2bf4ea1c09934ef19b9bcd1eac6dc7bf1affa4cfde" bash -c "`curl -sL https://raw.githubusercontent.com/buildkite/agent/master/install.sh`"
~/.buildkite-agent/bin/buildkite-agent start
 
     echo COUNTER $COUNTER
     let COUNTER-=1
done
