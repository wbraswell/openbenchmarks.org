#!/bin/sh
RUNSIZE=5000
GRAPHICS=0
USERNAME=`whoami`
export HOME=/home/$USERNAME
PHYSICSPERL_PATH=$HOME/austin_perl_mongers/physicsperl/physicsperl-latest

reset
cd $PHYSICSPERL_PATH
rm -Rf _Inline/
./script/demo/unlink_astro.sh
./script/demo/link_astro_PERLOPS_PERLTYPES_SSE.sh
rperl lib/PhysicsPerl/Astro/System.pm
./script/demo/n_body.pl $RUNSIZE $GRAPHICS
