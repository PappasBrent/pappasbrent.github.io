#!/usr/bin/env bash

set -eu

if [[ "$1" == "html" ]]; then
    cat <<EOF
---
layout: default
title: Advising
---

<h2>Undergraduate Researchers</h2>

EOF
    echo "<ul>"
    while IFS=$'\t' read -r name link dates description; do
        if [[ "$link" != "None" ]]; then
            echo "  <li><p><a style=\"font-weight: bold\" href=\"$link\">$name</a>. $dates. $description.</p></li>"
        else
            echo "  <li><p><span style=\"font-weight: bold\">$name</span>. $dates. $description.</p></li>"
        fi
    done < <(tail -n+2 tsv/advising.tsv)
    echo "</ul>"
elif [[ "$1" == "typst" ]]; then
    echo "#let advising = ["
    echo "== Undergraduate Researchers"
    while IFS=$'\t' read -r name link dates description; do
        if [[ "$link" != "None" ]]; then
            echo -e "#box[#link(\"$link\")[*$name*]. $dates. $description.]\n"
        else
            echo -e "#box[*$name*. $dates. $description.]\n"
        fi
    done < <(tail -n+2 tsv/advising.tsv)
    echo "]"
fi

