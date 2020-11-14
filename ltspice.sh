#!/bin/sh
CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/ltspice"
if [ ! -d "$HOME"/.ltspice ] ; then
   mkdir -p "$HOME"/.ltspice
fi
if [ ! -d $CONFIG_DIR ]; then
   mkdir -p $CONFIG_DIR 
   touch $CONFIG_DIR/LTspiceXVII.ini
fi
export WINEPREFIX=$HOME/.ltspice/env
wine /usr/share/ltspice/XVIIx64 -ini $CONFIG_DIR/LTspiceXVII.ini "$@"
