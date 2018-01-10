#!/bin/bash
INPUT=$1
echo $INPUT
tmux send-keys "$INPUT" C-m
