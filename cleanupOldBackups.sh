#! /bin/sh

find -name '*.asc' -mtime +30 -print -exec rm {} \;
