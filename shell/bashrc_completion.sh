#!/bin/sh

# 在bash高效匹配历史命令的技巧
curl -L http://hengyunabc.github.io/bash_completion_install.sh | sh
bind -f ~/.inputrc

# 这样子，先输入部分命令，再按键盘的Up/Down就可以自动补全出历史命令了。
