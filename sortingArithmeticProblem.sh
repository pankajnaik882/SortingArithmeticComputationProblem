echo "Welcome to the Sorting Arithmetic"
read -p "Enter a first number: " a
read -p "Enter b first number: " b
read -p "Enter c first number: " c

temp1=$(($a + $b * $c))
temp2=$((a * b + c))
temp3=$((c + a / b))
temp4=$((a % b + c))

declare -A value

value[1]="$temp1"
value[2]="$temp2"
value[3]="$temp3"
value[4]="$temp4"

counter=${value[@]}

temp=($counter)
variable=${temp[*]}
echo $variable

for i in $( echo "$variable" | tr ' ' '\n' | sort -nr )
do
  echo $i
done



