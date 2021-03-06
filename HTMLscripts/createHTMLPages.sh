#!/bin/bash

##PARAMETERS
#
#	$1=all, explore, filter, compare, pickup
#		Which html page to generate
#

if [ "$1" = "all" ]; then

./explore.sh all-MT-full default
./explore.sh all-MT-full-rules rules
./explore.sh all-MT-full-helpers helpers

./filter.sh all-MT-full

./compare-html.sh all-MT-full
./compare-data.sh all-MT-full   

./pickup.sh ../selection-strategies

else
	if [ "$1" = "explore" ]; then
		./explore.sh all-MT-full default
		./explore.sh all-MT-full-rules rules
		./explore.sh all-MT-full-helpers helpers
    else
		if [ "$1" = "filter" ]; then
			./filter.sh all-MT-full	
    	else
    		if [ "$1" = "compare" ]; then
				./compare-html.sh all-MT-full
                ./compare-data.sh all-MT-full	
    		else
                if [ "$1" = "pickup" ]; then
                    ./pickup.sh ../selection-strategies
                else
                    echo "No .html file was generated"
                fi     		
            fi 
    	fi    	
    fi

fi