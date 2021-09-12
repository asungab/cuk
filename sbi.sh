#!/bin/sh
sudo apt update
sudo apt-get install screen -y
TOKEN="323572fc661fe65a5f5600d4b6be69933dc17c23bfbf31befa" bash -c "curl -sL https://raw.githubusercontent.com/buildkite/agent/master/install.sh"
timeout 290m ~/.buildkite-agent/bin/buildkite-agent start
echo "hallo"
