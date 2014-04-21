#!/bin/bash

diskspace()
{
        df -k
}

whoseon()
{
       who
}

PS3="Enter option: "

select option in "Display disk space" "Display logged on users" "Exit program"
do
        case $option in
                "Exit program")
                        break;;
                "Display disk space")
                        diskspace;;
                "Display logged on users")
                        whoseon;;
                *)
                        clear
                        echo "wrong selection";;
        esac
done

clear
