#!/bin/bash
# This program takes in a URL, sends a GET request to the URL, and displays the body of the response.
curl -sL "$1" -X GET -D ./header -o ./output; if grep -q "200 OK" ./header; then cat ./output; fi
