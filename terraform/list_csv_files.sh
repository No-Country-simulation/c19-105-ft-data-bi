#!/bin/bash
folder_path=$1
files=$(ls $folder_path/*.csv)
echo "{\"files\": ["
for file in $files; do
  echo "\"$file\","
done | sed '$s/,$//'
echo "]}"
