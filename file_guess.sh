
read -p "What is your name? " name

read -p "Hello $name, let's try something. Guess the number of files that are in the current directory: " guess

count=0

for file in *
do
        if [[ -f $file ]];then
        ((count++))
        fi
done
        if [[ $count == $guess ]]; then
        echo "Well done $name, you have guessed it. There is a total of $count files!"
        exit 0
        fi

echo "Bad luck, $name, there is a total of $count files in this directory (you entered $guess)."
