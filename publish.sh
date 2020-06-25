#!/bin/bash
today=`date "+%d %B %Y"`
today_folder=`date "+%Y-%m-%d"`
git add $today_folder/*
git commit -m "Journal entry for $today"
git push -u origin master
