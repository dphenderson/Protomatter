#!/bin/bash

files=(image_src/*.png)
for f in "${files[@]}";
	do
		base=`basename "$f"`;
		pngcrush -rem alla -reduce "$f" "images/$base";
	done
