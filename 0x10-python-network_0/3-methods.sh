#!/bin/bash
# This script takes in a URL and displays all HTTP methods the server will accept.
curl -sI "$1" -X OPTIONS | grep "Allow:" | cut -d':' -f2 | sed 's/ //'
