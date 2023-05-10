
read -p "Enter the name of the file in the current folder you want to count" filename

num_words=$(wc -w < "$filename")

echo "The number of words in $filename is $num_words"
