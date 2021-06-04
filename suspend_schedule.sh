#!/bin/bash

clear
read -p "When to go to sleep (hour): " hour_schedule
read -p "When to go to sleep (minute): " minute_schedule

if [ $hour_schedule == 0 ] || [ $hour_schedule == 00 ];then
    hour_schedule=24
fi


hour_now=`date +%H`
minute_now=`date +%M`

hour_now="${hour_now#0}"


sum_now=$((hour_now * 60 + minute_now))
sum_schedule=$((hour_schedule * 60 + minute_schedule))


while [ $sum_now != $sum_schedule ]; do
    sleep 5
    hour_now=`date +%H`
    minute_now=`date +%M`
    hour_now="${hour_now#0}"
    if [ $hour_now == 0 ] || [ $hour_now == 00 ];then
        hour_now=24
    fi
    sum_now=$((hour_now * 60 + minute_now))
done

systemctl suspend
exit
