#!/bin/sh
RUNSIZE=5000
USERNAME=`whoami`
export HOME=/home/$USERNAME
RPERL_PATH=$HOME/austin_perl_mongers/rperl/rperl-latest

reset
cd $RPERL_PATH
rm -Rf _Inline/
./script/demo/unlink_bubble.sh
./script/demo/bubble_sort.pl $RUNSIZE
