#!/bin/bash

convertImage () {
    local path_image=$1
    local no_extension=$(ls $path_image | awk -F. '{ print $1 }')
    convert $no_extension.jpg $no_extension.png
}

runPath () {
    cd $1
    for file in *
    do 
        local file_path=$(find ~/Downloads/imagens-novos-livros -name $file)
        if [ -d $file_path ]
        then
            runPath $file_path
        else 
            convertImage $file_path
        fi 
    done 
}

runPath ~/Downloads/imagens-novos-livros
if [ $? -eq 0 ]
then 
    echo "Conversion performed successfully"
else 
    echo "Conversion failed"
fi
