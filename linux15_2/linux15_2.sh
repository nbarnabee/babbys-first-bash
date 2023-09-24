# Lab 15.2 from the Foundations of Linux
#!/bin/bash
echo Please enter A UNIQUE directory name
read name
mkdir $name
cd $name
touch test1.txt
touch test2.txt
touch test3.txt
find -empty
echo "Content for test1" > test1.txt
echo "Content for test2" > test2.txt
echo "Content for test3" > test3.txt
cat test1.txt ; cat test2.txt ; cat test3.txt
echo "Goodbye, $USER"
find -name "test*.txt" -execdir rm {} +
cd ..
rmdir $name
