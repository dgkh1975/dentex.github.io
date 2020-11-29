#!/bin/bash

MSG=`zenity --entry --text="gh-pages commit msg:"`

echo " --> adding \"all\""
git add --all

echo " --> commit with msg: $MSG"
git commit -am "$MSG"

echo " --> pushing to gh-pages branch"
git push origin gh-pages
