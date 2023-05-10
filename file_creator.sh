
read -p "Type the name of the file" name
read -p "Type the extension of the file" ext

touch "$name.$ext"

echo "The $name file has been created with the .$ext extension"
