#!/bin/bash

for fname in *.pdf
do
	echo $fname
	pypdfocr -l lang $fname
	sleep 1
done
