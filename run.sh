#!/bin/bash

if [ ! "$nolisten" ]; then
  socat TCP-LISTEN:5000,fork EXEC:"./runbc.sh",stderr &
fi
./runbc.sh
