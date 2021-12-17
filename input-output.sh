                                                                                converter.sh                                                                                              
#!/bin/bash

convertImage(){
cd ~/Downloads/IMAGE_BOOKS
#Check if there is a png folder
if [ ! -d png ]
then
    mkdir png #Create png folder
fi

#Remove jpg extension
for image in *.jpg
do
    local  no_extension=$(ls $image | awk -F. '{ print $1 }')
     convert $no_extension.jpg png/$no_extension.png #Transfer jpg files to png folder and convert to PNG format
done

}

convertImage 2>err.txt

if [ $? -eq 0 ]
then 
        echo "Conversion performed successfully"
else 
        echo "There was an error during convertion"
fi


