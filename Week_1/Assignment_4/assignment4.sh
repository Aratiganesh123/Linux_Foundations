
#!/bin/bash
#get the Cartesian x and y coodinates of a point that are passed as arguments
x=$1
y=$2
if (( $x > 0 & $y >= 0 ))
then
	theta=$(bc -l<<<"scale=10;((a($y/$x)*180)/(4*a(1)))+0.00000")
elif (( $x > 0 & $y < 0 ))
then 
	theta=$(bc -l<<<"scale=10;((a($y/$x)*180)/(4*a(1))) + 360")
elif (( $x < 0 ))
then 
	theta=$(bc -l<<<"scale=10;((a($y/$x)*180)/(4*a(1))) + 180")
elif (( $x == 0 & $y > 0 ))
then 
	theta=$(bc -l<<<"scale=10;180/2")
elif (( $x == 0 & $y < 0 ))
then 
        theta=$(bc -l<<<"scale=10;3*180/2")

fi

r=$(bc -l<<<"scale=10;sqrt($x*$x+$y*$y)")
printf "%.5f, %.5f\n" "$r" "$theta"  

#convert the Cartesian coordinates to the corresponding polar coordinates
#compute radius and theta (in degrees) upto 5 decimal places
#note: theta should range from 0 to 360 degrees

