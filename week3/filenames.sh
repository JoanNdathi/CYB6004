#Write a script named "filenames.sh" that goes through each line of a file.
#If that line contains a valid filename, print “That file exists”.
#If that line contains a directory name, print “That’s a directory”.
#Otherwise print “I don’t know what that is!”.
#Test your new script on “filenames.txt”.

# File = "filenames.txt"

if [[ -z "$1" ]];then
    echo "please provide the name of file"
    exit 1
fi
file_name=$1

while IFS= read -r line
do
  if [[ -f "$line" ]];then
    echo "That file exists"
  elif [[ -d "$line" ]];then
    echo "That's a directory"
  else
    echo "I don't know what that is"
  fi
done < "$file_name"

