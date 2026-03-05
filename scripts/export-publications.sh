#!/usr/bin/env bash

set -eu

if [[ "$1" == html ]]; then
    cat <<EOF
---
layout: default
title: Publications
---

EOF
    echo "<ul>"
    while IFS=$'\t' read -r name venue submittedpapers acceptedpapers preprinttext preprintlink artifactlink badges presentationlink slideslink authors; do
        cat <<EOF
    <li><p>
        <span style="font-weight: bold">$name</span>.
        ${venue}.
        $(if [[ "$submittedpapers" != "None" ]]; then echo -n "Acceptance rate of $(printf %.2f "$(echo "$acceptedpapers / $submittedpapers * 100" | bc -l)")% ($acceptedpapers / $submittedpapers)."; fi)
        <a href="$preprintlink">$preprinttext.</a>
        <a href="$artifactlink">Artifact.</a>
        $(if [[ "$badges" != "None" ]]; then echo -n "Badges: ${badges}."; fi)
        $(if [[ "$presentationlink" != "None" ]]; then echo -n "<a href=\"$presentationlink\">Presentation.</a>"; fi)
        $(if [[ "$slideslink" != "None" ]]; then echo -n "<a href=\"$slideslink\">Slides.</a>"; fi)
        By ${authors}.
    </p></li>
EOF
    done < <(tail -n+2 tsv/publications.tsv)
    echo "</ul>"
elif [[ "$1" == typst ]]; then
    rest=false
    echo "#let publications = ["
    while IFS=$'\t' read -r name venue submittedpapers acceptedpapers preprinttext preprintlink artifactlink badges presentationlink slideslink authors; do
    if `$rest`; then
        echo  ""
    else
        rest=true
    fi
        {
            cat <<EOF
            #box[
                *$name*: by $authors.
                ${venue}.
                $(if [[ "$submittedpapers" != "None" ]]; then echo -n "Acceptance rate of $(printf %.2f "$(echo "$acceptedpapers / $submittedpapers * 100" | bc -l)")% ($acceptedpapers / $submittedpapers)."; fi)
                #link("$preprintlink")[${preprinttext}.]
                #link("$artifactlink")[Artifact.]
                $(if [[ "$badges" != "None" ]]; then echo -n "Badges: ${badges}."; fi)
                $(if [[ "$presentationlink" != "None" ]]; then echo -n "#link(\"$presentationlink\")[Presentation.]"; fi)
                $(if [[ "$slideslink" != "None" ]]; then echo -n "#link(\"$slideslink\")[Slides.]"; fi)
            ]
EOF
    } | sed '/^[[:space:]]*$/d'
    done < <(tail -n+2 tsv/publications.tsv)
    echo "]"
fi
