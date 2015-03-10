#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
LECTURE="${DIR}/../../../lecture_2/awk_sed"
# Descarga el libro de **The Time Machine** de *H. G. Wells*, convertirlo a minúsculas, extraer las palabras, ordenarlas, eliminar duplicados y contarlos, ordenar de mayor a menor y luego mostrar el top 10. *una sola linea*

curl -s http://www.gutenberg.org/cache/epub/35/pg35.txt > time_machine.txt

< time_machine.txt | tr '[:upper:]' '[:lower:]' | grep -Eo '\w+' | sort | uniq -c | sort -rn | head -10 > wibbly_wobbly_timey_wimey_stuff.txt

# Pegar mediana, desv estandar en un mismo archivo y aplicarselo a diferentes columnas.

< $LECTURE/data.txt awk -f utils.gawk

# Completar el ejercicio que esta en el lecture 2 con ufos

## ¿Cómo reconocemos los avistamientos en otro país? ¿Cuántos hay?

< ../ejercicios/UFO-Nov-Dic-2014.tsv | cut -d$'\t' -f2 | egrep "?[(]" | sort | egrep -v 'New York City|Orlando|I\-|Phoenix|U\. S\.|E of Indian|outside of' | wc -l

## ¿Cuántos avistamientos no tienen forma de esferoide?

< UFO-Nov-Dic-2014.tsv | cut -d$'\t' -f4 | egrep -v 'Sphere' | wc -l
