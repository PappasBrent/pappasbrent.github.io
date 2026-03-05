#!/usr/bin/env bash

set -eu

if [[ "$1" == "html" ]]; then
    cat <<EOF
---
layout: default
title: Service
---

EOF
    echo "<ul>"
    while IFS=$'\t' read -r name location dates keyword1 description1 keyword2 description2; do
        cat <<EOF
        <li>
            <p>
                <span style="font-weight: bold">$name</span>.
                $location.
                $dates.
                $(if [[ "$keyword1" != "None" ]] || [[ "$keyword2" != "None" ]]; then echo "<ul>"; fi)
                $(if [[ "$keyword1" != "None" ]]; then echo "<li><span style=\"font-weight: bold\">$keyword1</span>: $description1</li>"; fi)
                $(if [[ "$keyword2" != "None" ]]; then echo "<li><span style=\"font-weight: bold\">$keyword2</span>: $description2</li>"; fi)
                $(if [[ "$keyword1" != "None" ]] || [[ "$keyword2" != "None" ]]; then echo "</ul>"; fi)
            </p>
        </li>
EOF
    done < <(tail -n+2 tsv/service.tsv)
    echo "</ul>"
elif [[ "$1" == "typst" ]]; then
    echo "#let service = ["
    while IFS=$'\t' read -r name location dates keyword1 description1 keyword2 description2; do
        cat <<EOF

        #box[
            *$name*.
            $location.
            $dates.
            $(if [[ "$keyword1" != "None" ]]; then echo "- *$keyword1*: $description1"; fi)
            $(if [[ "$keyword2" != "None" ]]; then echo "- *$keyword2*: $description2"; fi)
        ]
EOF
    done < <(tail -n+2 tsv/service.tsv)
    echo "]"
fi

