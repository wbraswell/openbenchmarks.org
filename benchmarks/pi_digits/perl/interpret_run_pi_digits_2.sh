#!/bin/sh
RUNSIZE=2000
USERNAME=`whoami`
export HOME=/home/$USERNAME
MATHPERL_PATH=$HOME/austin_perl_mongers/mathperl/mathperl-latest

reset
cd $MATHPERL_PATH
rm -Rf _Inline/
./script/demo/unlink_pi_digits.sh
./script/demo/pi_digits.pl $RUNSIZE
