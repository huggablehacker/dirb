#!/bin/bash

while read -r url; do
  printf 'URL: "%s"\n' "$url"

  outfile="$( tr -s -c 'A-Za-z0-9' '_' <<<"$url" )"
  printf 'File: "%s"\n' "$outfile"

  dirb "$url" /usr/share/wordlists/dirb/small.txt -v -o "$outfile"
done <ip.txt
dirb "$url" -v -o "$outfile"