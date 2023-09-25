#!/bin/bash

# Take a suffix, create a directory and the .sh files for the Linux Foundation labs.

echo "Enter a directory suffix."
read suffix
full_string=linux$suffix
mkdir ${full_string}
cd ${full_string}
echo "Coming at you from $(pwd)"
touch ${full_string}.sh ${full_string}_official.sh
for file in linux*.sh
do
	echo "#!/bin/bash" > $file
done
exit 0
