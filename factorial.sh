if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <number>"
  exit 1
fi

number=$1

if ! [[ $number =~ ^[0-9]+$ ]]; then
  echo "Please enter a valid non-negative integer."
  exit 1
fi

factorial=1

for ((i = 1; i <= number; i++)); do
  factorial=$((factorial * i))
done

echo "Factorial of $number is: $factorial"
