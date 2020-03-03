#!/bin/sh

curl 'http://www.zs-pardubicky.cz/' | xsltproc --html zs.xslt - | sed 's/<?xml version="1.0"?>/<?xml version="1.0" encoding="UTF-8" ?>/' > data.rss
