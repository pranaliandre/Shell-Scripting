#!/bin/bash -x
#1ft = 12 in then 42 in = ? ft
inch=42
feet=$(echo "scale=2; $inch/12 " | bc)
#Rectangular Plot of 60 feet x 40 feet in meters 
rectangularArea=$(echo "scale=20; (60*40)*0.3048" | bc)
#Calculate area of 25 such plots in acres
areaOf25Plots=$(echo "scale=20; $rectangularArea*25" | bc)
AreaInAcre=$(echo $areaOf25Plots*0.000247105 | bc )

