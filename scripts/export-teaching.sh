#!/usr/bin/env bash

set -eu

if [[ "$1" == "html" ]]; then
cat <<EOF
---
layout: default
title: Teaching
---

<a href="/assets/pdf/teaching-philosophy.pdf">Teaching Philosophy.</a>

EOF

    while IFS=$'\t' read -r name uni season year sitelink ytlink; do
        cat <<EOF
    <div class="card">
        <h5>$name</h5>
        <h6>
            $uni $season $year.
            <a href="$sitelink">Course homepage.</a>
            <a href="$ytlink">Lecture recordings.</a>
        </h6>
    </div>
EOF
    done < <(tail -n+2 tsv/teaching.tsv)
elif [[ "$1" == "typst" ]]; then
    echo "#let teaching = ["
    while IFS=$'\t' read -r name uni season year sitelink ytlink; do
        echo "#box[*$name*. $uni $season $year. #link(\"$sitelink\")[Course homepage.] #link(\"$ytlink\")[Course recordings.]]"
    done < <(tail -n+2 tsv/teaching.tsv)
    echo "]"
fi
