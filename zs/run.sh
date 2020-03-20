#!/bin/sh

PWD=$(cat /home/ls/.config/myrss.zs.pwd)

curl 'http://www.zs-pardubicky.cz/' | xsltproc --html $PWD/zs.xslt - | sed 's/<?xml version="1.0"?>/<?xml version="1.0" encoding="UTF-8" ?>/' > $PWD/data.rss

git -C $PWD commit -am update
git -C $PWD push
