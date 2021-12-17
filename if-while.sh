#!/bin/bash
cd ~/Downloads/imagens-livros

convertImage(){
#Check if there is a png folder
if [ ! -d png ]
then
    mkdir png #Create png folder
fi

#Remove jpg extension
for image in *.jpg
do
     no_extension=$(ls $image | awk -F. '{ print $1 }')
     convert $no_extension.jpg png/$no_extension.png #Transfer jpg files to png folder and convert to PNG format
done
}

convertImage

echo $no_extension