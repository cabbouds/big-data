curl -s http://www.gutenberg.org/cache/epub/35/pg35.txt|tr '[:upper:]' '[:lower:]'| grep -oE '\w+' | sort | uniq -c | sort -nr | head -n 10 > top_10_palabras.txt
