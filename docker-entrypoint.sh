#!/bin/bash

set -e

FILE=/usr/src/ut2004/System/UT2004.ini
if [ -f "$FILE" ]; then
    echo "$FILE exists. Moving on..."
else
    cp -r /usr/src/System/* /usr/src/ut2004/System
    cp /usr/src/ut2004/System/UT2004.ini /usr/src/ut2004/System/UT2004.ini.tpl
    chmod 777 /usr/src/ut2004/System/*
fi

if [ "$1" = 'ucc-bin' ]; then
    # Put cdkey in place
    echo $CDKEY > cdkey
    if [ -f UT2004.ini.tpl ];
    then
        envtpl UT2004.ini.tpl
    fi
fi

exec "$@"
