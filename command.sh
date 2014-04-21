#!/bin/bash

lsof

nohup


bg
fg

nice -n 10 ./test.sh
renice 10 -p 1024

at -f script.sh 14:29
atrm
atq

crontab -l

anacron

. ./myfunc.sh
