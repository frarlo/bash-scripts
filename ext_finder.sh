
read -p "Input a directory: " dir
read -p "Input a file extension: " ext
cd "$dir"
for file in *
do 
  if [[ -f "$file" && "$file" == *".$ext" ]]; then
    echo "$file found!"
  exit 0
  fi
done

echo "There are no files with the $ext extension in the selected directory."
