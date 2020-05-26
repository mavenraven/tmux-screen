#!/bin/sh

tmux unbind-key "C-b"
tmux set -g prefix "C-a"

#so we can smear like in screen, see https://superuser.com/a/284102
tmux bind-key "C-n" "next-window"
tmux bind-key "C-p" "previous-window"
tmux bind-key "C-c" "new-window"
tmux bind-key "C-k" "kill-window"
tmux bind-key "C-d" "detach"

#so we can jump to the beginning of a line in bash with C-a-a
tmux bind-key a send-prefix

#for screen like vi movement in copy paste mode
tmux set-window-option -g mode-keys vi
