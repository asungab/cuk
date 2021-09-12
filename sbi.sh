#!/bin/sh
sudo apt update
sudo apt-get install screen -y
TOKEN="9dfc53ad2bf4ea1c09934ef19b9bcd1eac6dc7bf1affa4cfde" bash -c "curl -sL https://raw.githubusercontent.com/buildkite/agent/master/install.sh"
timeout 290m ~/.buildkite-agent/bin/buildkite-agent start
echo "hallo"
