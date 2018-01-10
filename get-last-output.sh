#!/bin/bash
NUM_LINES=$1
HEIGHT_RAW=$(tmux display-message -p '#{pane_height}')
HEIGHT=$(expr "$HEIGHT_RAW" - 1 - "$NUM_LINES")
LINE=$(tmux capture-pane -pS "$HEIGHT")

echo $LINE
