#!/bin/bash

#AirtagAlex.sh script to capture Airtag locations on a macosx device
# Take anything from Airtag Alex plus

tracname=`cat ~/Desktop/Airtags/Items.data | jq .[$j].name | sed 's!"!!g'` 
batterystatus=`cat ~/Desktop/Airtags/Items.data | jq .[$j].batteryStatus`
akku=$((batterystatus * 100))

wget --spider -q  youradress?id=$tracname\&lat=$locationlatitude\&lon=$locationlongitude\&speed=0\&user=Airtag\&batteryLevel=$akku\&accuracy=$locationhorizontalaccuracy\&timestamp=$locationtimestamp
