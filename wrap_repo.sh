#! /bin/bash

mkdir tmp
touch tmp/repos_list.txt
echo "" >> ./tmp/repos_list.txt
echo "" >> ./tmp/repos_list.txt
echo "# PLEASE ENTER THE LINKS TO YOUR REPOSITORIES THAT YOU WISH TO WRAP (ONE IN EACH LINE):" >> ./tmp/repos_list.txt
echo "# https://github.com/Miookie/Repo-Wrapper.git " >> ./tmp/repos_list.txt
nano ./tmp/repos_list.txt

rm -r tmp/
