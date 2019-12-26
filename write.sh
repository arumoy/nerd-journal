#!/bin/bash
today_folder=`date "+%Y-%m-%d"`
post_header="# `date "+%d %B %Y, %I:%M:%S %p"`"
mkdir $today_folder
echo $post_header >> $today_folder/README.md
code $today_folder/README.md
