#!/bin/bash

if [[ $# -eq 0 ]]
then
	input="README.md"
	output="proposal.pdf"
else
	input="$1"
	output="${input%.*}.pdf"
fi

echo "Writing PDF to $output ..."
pandoc --defaults pandoc.yaml "$input" --output "$output"

