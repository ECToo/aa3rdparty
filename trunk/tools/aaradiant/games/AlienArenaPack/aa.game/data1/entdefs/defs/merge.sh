#!/bin/bash

rm ../*.def

for f in *.def;
	do
	cat $f >> ../new_entities.def;
	echo -e "\r" >> ../new_entities.def;
	done
grep -v "model=" ../new_entities.def | grep -v "MODEL" >> ../nomodels.def

