#!/bin/bash

echo "Looking for boost-dependencies file..."
filename=${PWD}/boost-dependencies
boost_dir=$1

echo "Reading boost dependencies..."
while read -r line
do
    dependencies="${line} ${dependencies}"
done < "$filename"

echo $dependencies

echo "Preparing bcp command..."
bcp_command="bcp $dependencies --boost=$boost_dir ."

eval $bcp_command && echo "Complete"

