#!/bin/bash
#This randomly generates attendance
#another comment
for STUDENT in Josh Vanessa Victor Scott Hadeel Jaime
do
	ATTENDANCEN=$RANDOM
	if [ $ATTENDANCEN -lt 7000 ]
	then 
		ATTENDANCE=Absent
	elif [ $ATTENDANCEN -lt 12000 ]
	then
		ATTENDANCE=Late
	else
		ATTENDANCE=Present
	fi
	echo $STUDENT - $ATTENDANCE
done
