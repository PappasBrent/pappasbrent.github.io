#!/usr/bin/env bash

set -eu

if [[ "$1" == "html" ]]; then
    :
elif [[ "$1" == "typst" ]]; then
    echo "#let education = ["
    while IFS=$'\t' read -r institute location dates degree major gpa; do
        echo "#box[*$degree*. $major. GPA: $gpa. $institute. $location. $dates.]"
    done < <(tail -n+2 tsv/education.tsv)
    echo "]"
fi

