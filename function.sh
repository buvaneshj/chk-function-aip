echo 'hello faas'
echo 'test file to check clone from git'
echo 'execute a python file'
if [ $(($# % 2)) -ne 0 ]; then
    echo "Error: Number of arguments must be even"
fi

for ((i = 1; i <= $#; i+=2)); do
    echo ${i}
done
# Loop through arguments by pairs
for ((i = 1; i <= $#; i+=2)); do
    key="${!i}"
    value="${@:i+1:1}"
    echo "$key: $value"
done

python faas.py
