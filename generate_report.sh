#!/bin/bash

if [ "$#" -ne 2 ]; then
	echo "usage: $0 <input.md> <output.pdf>"
	exit
fi

# if this machine does not have the template in place, put it there!
if [ ! -e /usr/share/pandoc/data/templates/eisvogel.latex ]
then
	sudo cp eisvogel.latex /usr/share/pandoc/data/templates/
fi

pandoc $1 -o $2 \
--from markdown+yaml_metadata_block+raw_html \
--template eisvogel \
--table-of-contents \
--toc-depth 6 \
--number-sections \
--top-level-division=chapter \
--highlight-style tango

if [ $? -eq 0 ]
then
	evince $2
fi
