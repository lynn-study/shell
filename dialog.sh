#!/bin/bash

#dialog --title Testing --msgbox "this is a test" 10 20

#dialog --title "please answer" --yesno "Is this thing on?" 10 20
#echo $?
#
#dialog --inputbox "Enter your age:" 10 20 2>age.txt
#echo $?

#dialog --textbox /etc/passwd 15 45

#dialog --menu "Sys Admin Menu" 20 30 10 1 "Display disk space" 2 "Display users" 3 "Display memory usage" 4 " Exit" 2> text.txt

dialog --title "Select a file" --fselect $HOME/ 10 50 2> file.txt
