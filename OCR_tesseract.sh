#!/bin/bash

for fname in *.pdf
do
	echo $fname
	convert -density 300 $fname -depth 8 -background white +matte ${fname:0:${#fname} - 4}.tiff
	tesseract ${fname:0:${#fname} - 4}.tiff ${fname:0:${#fname} - 4}
	rm ${fname:0:${#fname} - 4}.tiff
	sleep 1
done