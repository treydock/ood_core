#!/bin/bash

tmp=$(mktemp)

http_response=$(curl -s -o response.txt -w "%{http_code}"  --show-error --connect-timeout 3  -H "X-Auth-Token: $TOKEN"  http://$BASE_URI/compute/v2.1/flavors  )
if [ $http_response != "200" ]; then
    #echo "$http_response" >&2
    cat response.txt >&2
    exit 1
else
    echo "Server returned:"
    cat response.txt
    exit 0
fi








#echo "curl $BASE_URI using token $TOKEN"
