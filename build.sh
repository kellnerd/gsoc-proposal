#!/bin/bash

if [[ $# -eq 0 ]]
then
	input="proposal.md"
else
	input="$1"
fi

output="${input%.*}.pdf"

echo "Writing PDF to $output ..."
pandoc --defaults pandoc.yaml "$input" --output "$output"

