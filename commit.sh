#!/bin/bash

# 下载并安装 Node.js
curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

# 卸载 git-commit-msg-linter
npm uninstall -g git-commit-msg-linter

# 安装 git-commit-msg-linter
npm install -g git-commit-msg-linter --save-dev