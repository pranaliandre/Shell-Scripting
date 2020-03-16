#!/bin/bash -x
args=("$@")
echo $@
m=${args[0]}
d=${args[1]}
y=${args[2]}
y0=$(( $y - ( 14 - $m ) / 12 ))
x=$(( $y0 + $y0 / 4 - $y0 / 100 + $y0 / 400 ))
m0=$(( $m + 12 * (( 14 - $m ) / 12) - 2 ))
day0=$(( ( $d + $x + 31 * $m0 / 12 ) % 7 ))
case $day0 in
   0)
      echo "Day of the date $@ is Sunday"
      ;;
   1)
      echo "Day of the date $@ is Monday"
      ;;
   2)
      echo "Day of the date $@ is Tuesday"
      ;;
   3)
      echo "Day of the date $@ is Wednesday"
      ;;
   4)
      echo "Day of the date $@ is Thursday"
      ;;
   5)
      echo "Day of the date $@ is Friday"
      ;;
   6)
      echo "Day of the date $@ is Saturday"
      ;;
   *)
      echo "Invalid day"
      ;;
esac
