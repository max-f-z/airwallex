#!/bin/bash
/usr/bin/curl -s localhost:8080 | sed -n '/<body>/,/<\/body>/p' | sed -e 's/<[^>]*>//g' | tr -c '[:alnum:]' '[\n*]' | grep -v "^$" | sort | uniq -c | sort -r | head -1 | awk '{print $2}'