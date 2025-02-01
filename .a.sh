#!/bin/bash
 
mkdir -p modules
 
folder_names=("abhishek_vpc" "public_subnet" "private_subnet" "igw" "public_route_table"
              "private_route_table" "eip" "nat_gateway")
 
for folder in "${folder_names[@]}"
do
  mkdir "modules/$folder"
 
  cd "modules/$folder"
 
  touch main.tf
  touch variables.tf
  cd ../..
 
done
 
touch main.tf
touch variables.tf
touch terraform.tfvars
