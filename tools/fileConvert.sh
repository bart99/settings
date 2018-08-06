#!/bin/bash

echo "Encoding convert error list.." > /tmp/convert.log

## 변수 선언
BOM=`printf "\xEF\xBB\xBF"`
logfile="/tmp/convert.log"
tmpfile="/tmp/temp.txt"
flagBOM=0

## 함수 정의
isValidUTF8() {
	file=$1

	# iconv -f utf8 -t utf-16
	iconv -f utf-8 -t utf-16 "$file" > "$tmpfile"
	if test "$?" == "0"; then
		return 0
	fi

	return 1
}

isBOM() {
	file=$1

	# bom check..
	buf=`head -c 3 $file`
	if test "$buf" = "$BOM"; then
	    flagBOM=1
	else
	    flagBOM=0
	fi
}

insertBOM() {
	file=$1

	isBOM "$i"
	if test "$flagBOM" = 0; then
	    echo -ne "\xEF\xBB\xBF" > $tmpfile
	    (cat "$file" >> "$tmpfile")
	    cp "$tmpfile" "$file"
	fi
}

# filename에 space 문제해결을 위해 IFS 이용.
SAVEFILES=$IFS
IFS=$(echo -en "\n\b")
#for i in `find . -name '*.cpp' -o -name '*.c'`
for i in `find . -name '*.h' -o -name '*.cpp' -o -name '*.c' -o -name '*.inl'`
do
	IFS=$SAVEFILES

	if isValidUTF8 "$i" ; then
		echo "already utf8 file : "$i
	
#		isBOM "$i"	
#		if test "$flagBOM" = 1; then
#		    continue
#		else
#		    insertBOM "$i"
#		fi
		insertBOM "$i"
		continue		
	fi
	
	echo -ne "cp949->utf8 : "$i"\r"

#echo -ne "\xEF\xBB\xBF" > $tmpfile
	iconv -f cp949 -t utf-8 "$i" > "$tmpfile"
	
	if test "$?" != "0"; then
		echo "cp949->utf8 : "$i" ...FAILED"

		echo -ne "utf-16le->utf8 : "$i"\r"		
#echo -ne "\xEF\xBB\xBF" > "$tmpfile"
		iconv -f utf-16le -t utf-8 "$i" > "$tmpfile"

		if test "$?" != "0"; then
			echo "utf-16le->utf8 : "$i" ...FAILED"
			echo "Need Validation : "$i >> $logfile
		else
			echo "utf-16le->utf8 : "$i" ...OK"
			cp "$tmpfile" "$i"
			insertBOM "$i"
		fi
	else
		echo "cp949->utf8 : "$i"....OK"
		cp "$tmpfile" "$i"
		insertBOM "$i"
	fi
done
IFS=$SAVEFILES
