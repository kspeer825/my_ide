#!/bin/bash
# Ophelia main
session=ophelia-$1
tmux new-session -d -s $session

# emacs
window=0
tmux rename-window -t $session:$window 'emacs'
tmux send-keys -t $session:$window 'emacs ' C-m

# mono-root
root=~/git/ophelia-web/
window=1
tmux new-window -t $session:$window -n 'root'
tmux send-keys -t $session:$window 'cd ' $root Enter
tmux send-keys -t $session:$window 'git status' Enter

# dev-patientx
window=2
tmux new-window -t $session:$window -n 'dev-patientx'
tmux send-keys -t $session:$window 'cd ' $root 'client/patient' Enter

# dev-clinicalx
window=3
tmux new-window -t $session:$window -n 'dev-clinicalx'
tmux send-keys -t $session:$window 'cd ' $root 'client/emr' Enter
