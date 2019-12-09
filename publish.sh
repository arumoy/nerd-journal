#!/bin/bash
today=`date "+%d %B %Y"`
git add .
git commit -m "Journal entry for $today"
git push -u origin master