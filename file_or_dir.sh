# Asking the user for the input:
read -p "Enter the archive or file you want to search in this folder" object
# loop between the folder's contents:
for file in *
do
  if [[ $file == $object ]]; then   # The script has found the object name.
    if [[ -d $file ]]; then         # The script checks if the object is a directory.
    echo "$object is a directory."
    elif [[ -f $file ]]; then       # The script checks if the object is a file.
    echo "$object is a file."
    fi
  exit 0                            # The script returns a 0 status (success) and exits.
  fi
done

echo "$object has not been found."  # The script has not found the entered object.
