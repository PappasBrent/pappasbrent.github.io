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
    echo "<ul>"
    while IFS=$'\t' read -r name uni season year sitelink ytlink spilink; do
        cat <<EOF
        <li>
            <p>
                <span style="font-weight: bold">$name.</span>
                $uni $season $year.
                $(if [[ "$sitelink" != "None" ]]; then echo "<a href=\"$sitelink\">Course homepage.</a>"; fi)
                $(if [[ "$ytlink" != "None" ]]; then echo "<a href=\"$ytlink\">Lecture recordings.</a>"; fi)
                $(if [[ "$spilink" != "None" ]]; then echo "<a href=\"$spilink\">Student perception of instruction.</a>"; fi)
            </p>
        </li>
EOF
    done < <(tail -n+2 tsv/teaching.tsv)
    echo "</ul>"
elif [[ "$1" == "typst" ]]; then
    echo "#let teaching = ["
    while IFS=$'\t' read -r name uni season year sitelink ytlink spilink; do
        cat <<EOF
        #box[
            *$name*.
            $uni $season $year.
            $(if [[ "$sitelink" != "None" ]]; then echo "#link(\"$sitelink\")[Course homepage.]"; fi)
            $(if [[ "$ytlink" != "None" ]]; then echo "#link(\"$ytlink\")[Lecture Recordings.]"; fi)
            $(if [[ "$spilink" != "None" ]]; then echo "#link(\"$spilink\")[Student perception of instruction]"; fi)
        ]
EOF
    done < <(tail -n+2 tsv/teaching.tsv) | sed '/^[[:space:]]*$/d'
    echo "]"
fi
