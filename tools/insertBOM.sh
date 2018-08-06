#!/bin/bash

file=$1
flagBOM=0
tmpfile="/tmp/temp.txt"

isBOM() {
    
    # bom check..
    buf=`head -c 3 $file`
    if test "$buf" = "$BOM"; then
	flagBOM=1
    else
	flagBOM=0
    fi
}

isBOM "$file"

if test "$flagBOM" = 0; then
    echo -ne "\xEF\xBB\xBF" > $tmpfile
    (cat "$file" >> "$tmpfile")
    cp "$tmpfile" "$file"
fi
