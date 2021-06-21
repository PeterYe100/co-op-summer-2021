# file names to new_{old_name}.txt
for file in `ls *.txt`
do 
    mv $file new_$file
    echo moving $file to new_$file
done
# delete all .bak files 
for file in `ls *.bak`
do 
    rm $file
    echo removing $file
done


#and change the names of .py files to long_{old_name}.py or short_{old_name}.py depending on the condition that the number of lines in each of .py files is >= 10 lines or not.
for file in `ls *.py`
do
    varlin=$(cat $file | wc -l)
    if [ $varlin -gt 9 ]
    then
        mv $file long_$file
        echo moving $file to long_$file
    else
        mv $file short_$file
        echo moving $file to short_$file
    fi
done