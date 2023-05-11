

read -p "Enter the folder: " dir

if [ -d "$dir" ]; then    	                       
        echo "The folder $dir exists."
else
        echo "The folder $dir does not exists."    
        exit 1                                     
fi

c_fil=0
c_dir=0

for file in "$dir" /*
do
        if [ -f "$file" ]; then                   
        c_fil=$(( c_fil + 1 ))
        elif [ -d "$file" ]; then
        c_dir=$(( c_dir + 1 ))
        fi
done

echo "In the folder $dir there are $c_fil file/s and $c_dir folder/s."
