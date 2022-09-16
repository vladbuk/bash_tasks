#!/bin/bash

start=`date +%s`
sleep 1
end=`date +%s`

runtime=$(($end - $start))

echo $runtime
