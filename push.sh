#! /bin/bash

message=$1
if [ $# -lt 1 ]; then
	echo "Need message param"
	exit -1
fi

git add .
git commit . -m "$message"
git push
