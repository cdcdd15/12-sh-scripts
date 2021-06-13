#!/bin/bash
#cd "$HOME/Downloads"
touch film-glee-1.txt
touch film-pokemon-2.txt
mkdir glee
mkdir pokemon
for filename in *; do
  # this syntax emits the value in lowercase: ${var,,*}  (bash version 4)
  case "${filename,,*}" in
    *glee*)    mv "$filename" "glee/" ;;
    *pokemon*) mv "$filename" "pokemon/" ;;
    *) echo "don't know where to put $filename";;
  esac
done