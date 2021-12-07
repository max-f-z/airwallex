#!/bin/bash
for i in {1..6}
do
sleep 10;
msg=$(/usr/bin/docker stats --no-stream nginx --format "{\"container\":\"{{ .Container }}\",\"memory\":{\"raw\":\"{{ .MemUsage }}\",\"percent\":\"{{ .MemPerc }}\"},\"cpu\":\"{{ .CPUPerc }}\"}"); 
date=$(date)
echo $date $msg >> /tmp/nginx.log 
done