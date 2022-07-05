#! /bin/bash

GREEN='\033[0;32m'
NC='\033[0m'

get_input(){
    touch tmp/repos_list.txt
    echo "" >> ./tmp/repos_list.txt
    echo "" >> ./tmp/repos_list.txt
    echo "# PLEASE ENTER THE LINKS TO YOUR REPOSITORIES THAT YOU WISH TO WRAP (ONE IN EACH LINE):" >> ./tmp/repos_list.txt
    echo "# https://github.com/Miookie/Repo-Wrapper.git " >> ./tmp/repos_list.txt
    nano ./tmp/repos_list.txt
}

make_submodules(){

    if [ $# -eq 0 ]
    then
        file='./tmp/repos_list.txt' 
    else
        file="$1"
    fi

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
        echo -n "* [" >> test.md
        python3 ./tmp/main.py -n "$line" >> test.md
        echo -n "]($line): " >> test.md
        python3 ./tmp/main.py -d "$line" >> test.md 
        echo -e "\n" >> test.md
        echo -e "${GREEN}SUCESSFULLY ADDED $line TO YOUR REPOSITORY"
        echo -e "${NC}"   

    done < $file  
}

create_python_file(){
    cd tmp
    wget -c https://raw.githubusercontent.com/Miookie/Repo-Wrapper/main/main.py
    cd ..
}

remove_temp_files(){
    rm -r tmp/
    rm geckodriver.log
}

mkdir tmp
create_python_file

if [ $# -eq 0 ]
then
    get_input
    make_submodules
else
    if [ "$1" = "-f" ]
    then
        make_submodules "$2"
    fi
fi

remove_temp_files

