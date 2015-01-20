#!/bin/bash

for corletra in 1 2 3 4 5 6 7 8;
do
	for corfundo in 1 2 3 4 5 6 7 8;
		do
		tput setaf $corletra; 
		tput setab $corfundo; 
		echo -ne " ** Carnaval Logicus 2015, a gente vai se no Shell ** "; 	
		tput sgr0; 
	done; 
done
