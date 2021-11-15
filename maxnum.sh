
for((i=0;i<10;i++))
do
	arr[i]=$((RANDOM%900 +100))
done

echo "All numbers are= ${arr[@]}"

firstMax=${arr[0]}
secMax=${arr[0]}


for((i=0;i<10;i++))
do
	if(( arr[i] >  firstMax ))
	then
		secMax=$firstMax
		firstMax=${arr[i]}
	elif(( arr[i] > $secMax && arr[i] != $firstMax ))
	then
		secMax=${arr[i]}
	fi
done

echo "First Number = $firstMax"
echo "Second Max Number= $secMax"
