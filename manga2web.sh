#!/bin/bash


indexloop () {
  for i in *.{jpg,jpeg,png}; do
    if [ -f "$i" ]; then
      echo "<a href=\"#$i\">$i</a><br>"
    fi
  done
  echo "</p><hr><br>"
}

picloop () {
  echo "<center>"
  for i in *.{jpg,jpeg,png}; do
    if [ -f "$i" ]; then
      echo "<p id=\"$i\">$i<img src=\"$i\"></p><br><br>"
    fi
  done
  echo "</center><hr><br></html>"
}

main () {
  echo '<!DOCTYPE html><head>'"<title>${PWD##*/} - Manga2Web</title>"'<meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1"><style>body{background-color:lightgrey;max-width:40em;font:1.1em/1.2em sans-serif;}h1,h2,h3{line-height:1.2em;}@media print{body{max-width:none}}</style></head><body>'"<h1>${PWD##*/} - Manga2Web</h1><hr><p>"
  indexloop
  picloop
}

main > index.htm
