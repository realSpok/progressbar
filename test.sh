#!/bin/bash
_start=1
_end=100

for number in $(seq ${_start} ${_end})
do
    sleep 0.1
    echo "testing with "
    progress ${number} ${_end}
done
