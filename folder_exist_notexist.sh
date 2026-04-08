#!/bin/bash

check_folderexist_foldernotexist() {
    #folder="miseacademy"
    #read -p "Enter your folder name: " folder
    folder=$1

    if [ -z $folder ]; then
        echo "❌ Error: No folder name provided."
        echo "Usage: create_folder_if_not_exists <folder_name>"
        exit 1
    fi

    if [ -d $folder ]; then
        echo "$folder folder is already exist"
    else
        mkdir "$folder"
        echo "$folder folder has been created successfully"
    fi

}

read -p "Enter Your Folder Name : " folder
check_folderexist_foldernotexist $folder
