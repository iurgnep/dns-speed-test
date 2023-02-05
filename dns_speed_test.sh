#!/bin/bash

while IFS= read -r line; do
#printf '%s\n' "$line: $(dig @$line www.google.com | grep "Query time:" | cut -d : -f 2- | cut -d " " -f 2) ms"
var_sum=0
for((i=1;i<=10;i++));
do
var_t=$(dig @$line www.google.com | grep "Query time:" | cut -d : -f 2- | cut -d " " -f 2);
let var_sum=$var_sum+$var_t;
#echo $var_t;
#echo $var_sum;
done
#printf "%s\n" "$line average latency: $(echo 'scale=0; $var_sum/3' | bc) ms"
printf "%s\n" "$line average query time: $(echo $var_sum | awk '{print $1/10}') ms"
done < dns_servers.txt
