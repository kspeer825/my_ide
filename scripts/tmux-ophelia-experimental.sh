#!/bin/bash
exp=$1

# Ophelia experimental
session=ophelia-$exp
tmux new-session -d -s $session

# emacs
window=0
tmux rename-window -t $session:$window 'emacs'
tmux send-keys -t $session:$window 'emacs ' C-m

# mono-root
exp_root=~/git/experimental/ophelia-${exp}
window=1
tmux new-window -t $session:$window -n 'exp-root'
tmux send-keys -t $session:$window 'mkdir ' $exp_root Enter
tmux send-keys -t $session:$window 'cd ' $exp_root Enter
tmux send-keys -t $session:$window 'git clone git@github.com:opheliahealth/ophelia-web.git .' Enter
tmux send-keys -t $session:$window 'source ~/.zshrc && source ~/git/.firebase_config .' Enter

# patientx
window=2
tmux new-window -t $session:$window -n 'patientx'
tmux send-keys -t $session:$window 'cd ' $exp_root '/client/patient' Enter
tmux send-keys -t $session:$window 'source ~/.zshrc && source ~/git/.firebase_config .' Enter

# clinicalx
window=3
tmux new-window -t $session:$window -n 'clinicalx'
tmux send-keys -t $session:$window 'cd ' $exp_root '/client/emr' Enter
tmux send-keys -t $session:$window 'source ~/.zshrc && source ~/git/.firebase_config .' Enter
