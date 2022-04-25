#!/usr/bin/env bash

CWD=`pwd`
export FG_HOME=$CWD/fg-home



# TODO check this
# TODO https://forum.flightgear.org/viewtopic.php?f=21&t=36308

cp -v fgfsrc $FG_HOME/.fgfsrc
cp -v fg_*.xml $FG_HOME/Protocol

cd $FG_HOME
fgfs --verbose
