#!/bin/bash

# Gather data from planefinder client and post Mode S PPS and Mode AC PPS to influxdb. 
# Uses /ajax/stats endpoint on planefinder and pulls out relevant data from JSON

while true; do 
  content=$(curl --silent http://$PLANEFINDER_HOST:$PLANEFINDER_PORT/ajax/stats)
  mode_s_pps=$(echo $content | jq -r .total_modes_packets_ps)
  mode_ac_pps=$(echo $content | jq -r .total_modeac_packets_ps)
  
  curl --silent -XPOST "http://$INFLUX_HOST:$INFLUX_PORT/write?db=$INFLUX_DATABASE" --data-binary "mode_s_pps value=$mode_s_pps
  mode_ac_pps value=$mode_ac_pps"
  
  sleep $INTERVAL
  
done
