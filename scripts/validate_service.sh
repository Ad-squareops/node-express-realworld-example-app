#!/bin/bash
Response="$(curl localhost:80/api)"
if [[ "$Response" == *"404"* ]]; 
then echo "App is running"; 
else echo "App is Not running"; 
fi
