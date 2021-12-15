#!/bin/bash

cd ~/Downloads/imagens-livros
for image in *.jpg
do
	 no_extension=$(ls $image | awk -F. '{ print $1 }')
	 convert $no_extension.jpg  $no_extension.png
done

~ (home)
~/pasta/pasta/arquivo.js

convert ~/Downloads/imagens-livros/amazon_aws.jpg ~/Downloads/imagens-livros/amazon_aws.png

convert $PATH_IMAGES/$1.jpg $PATH_IMAGES/$1.png #Parametro 
convert $PATH_IMAGES/$2.jpg $PATH_IMAGES/$2.png

PATH_IMAGES=~/Downloads/imagens-livros

for image in $@
do
         convert $PATH_IMAGES/$image.jpg $PATH_IMAGES/$image.png
done

#Repartir ou tirar o nome da extensão do arquivo 

ls algoritmos.jpg | awk -F. '{ print $1 }'
#saída >>> algoritmos

cd ~/Downloads/imagens-livros
for image in *.jpg
do
         no_extension=$(ls $image | awk -F. '{ print $1 }')
         convert $no_extension.jpg  $no_extension.png
done

  GNU nano 4.8                                               converter.sh                                                         
#!/bin/bash

cd ~/Downloads/imagens-livros
for image in *.jpg
do
         no_extension=$(ls $image | awk -F. '{ print $1 }')
         convert $no_extension.jpg  $no_extension.png
done

