#! /bin/bash
date=`date +%s`
if [ $# == 0 ]
then
  message=`date +%s`
  message="update_at_"$message
else
  message=$1
fi

echo $message
git add .
git commit -m "$message"
git push
