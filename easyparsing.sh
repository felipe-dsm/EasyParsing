#!/bin/bash

echo -e "\nEasyParsing v1.0"
echo "--------------------------------------------------------------------"

read -p "[+] Type an URL: " url
echo "--------------------------------------------------------------------"

regex='<a\b[^>]*\bhref=["\x27]\K[^"\x27>]+'
resp=$(wget -qO - "$url" 2>/dev/null | grep -oPi "$regex" | grep -v '^#$' | sort -u)
num=1

echo -e "[+] List of links: \n"

for link in $resp; do
	echo "$num. $link"
	((num+=1))
done
