#!/bin/bash

while IFS= read -r line; do
[[ $line = \#* ]] && continue
#printf '%s\n' "$line: $(dig @$line www.google.com | grep "Query time:" | cut -d : -f 2- | cut -d " " -f 2) ms"
var_sum=0
for((i=1;i<=10;i++));
do
var_t=$(dig +time=2 +tries=1 @$line www.google.com | grep "Query time:" | cut -d : -f 2- | cut -d " " -f 2);
if [ ! $var_t ]; then
var_t=0
fi
let var_sum=$var_sum+$var_t;
#echo $var_t;
#echo $var_sum;
done
if [ $var_sum -eq 0 ]; then
echo "$line has no response."
else
printf "%s\n" "$line average query time: $(echo $var_sum | awk '{print $1/10}') ms"
fi
done < dns_servers.txt
