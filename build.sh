#!/bin/bash

for i in $(seq -w 26); do
    if [ -e "src/day${i}.ps" ]; then
        gs \
            -dDEVICEWIDTHPOINTS=595 -dDEVICEHEIGHTPOINTS=832 \
            -dBATCH \
            -sDEVICE=pdfwrite -sOutputFile="output/day${i}.pdf" \
            "data/day${i}.txt" "src/day${i}.ps" > /dev/null
    fi
done
