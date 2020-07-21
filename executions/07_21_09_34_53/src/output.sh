#!/bin/bash
BASEDIR=$PWD
set +x
. .colors.sh
set -e
if [ ! -f Rplots.pdf ]; then
    echo -e "$(c R)[error] The model has not generated the output Rplots.pdf"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output Rplots.pdf"
    mv Rplots.pdf ${OUTPUTS1}
fi
if [ ! -f accuracy.csv ]; then
    echo -e "$(c R)[error] The model has not generated the output accuracy.csv"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output accuracy.csv"
    mv accuracy.csv ${OUTPUTS2}
fi
