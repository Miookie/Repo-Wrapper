#! /bin/bash

get_input(){
    touch tmp/repos_list.txt
    echo "" >> ./tmp/repos_list.txt
    echo "" >> ./tmp/repos_list.txt
    echo "# PLEASE ENTER THE LINKS TO YOUR REPOSITORIES THAT YOU WISH TO WRAP (ONE IN EACH LINE):" >> ./tmp/repos_list.txt
    echo "# https://github.com/Miookie/Repo-Wrapper.git " >> ./tmp/repos_list.txt
    nano ./tmp/repos_list.txt
}

make_submodules(){

    file='./tmp/repos_list.txt'  
    while read line; do 
        if [ -z "$line" ]
        then
            #empty line
            continue
        fi 
        if [ ${line:0:1} = '#' ]
        then
            #comment line
            continue
        fi
        git submodule add "$line"   
    done < $file  
}
mkdir tmp
get_input
make_submodules
rm -r tmp/
