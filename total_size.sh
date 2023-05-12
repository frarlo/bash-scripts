 
echo "Size calculator. This script will calculate the total size of all the files in the current directory."

size=0

for file in *
do
        if [ -f "$file" ]; then
                du_output=$(du -k "$file" | awk '{print $1}')
                size=$((size + du_output))
        fi
done

echo "The total size of all the files in the current folder is $size kilobytes"
