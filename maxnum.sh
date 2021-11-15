
function randomNum()
{
for((i=0;i<10;i++))
do
	arr[i]=$((RANDOM%900 +100))
done
}
randomNum
echo "All numbers are= ${arr[@]}"

firstMax=${arr[0]}
secMax=${arr[0]}

function findMax()
{
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
}
findMax
echo "First Number = $firstMax"
echo "Second Max Number= $secMax"
