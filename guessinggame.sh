#!/bin/sh

read -p "How many files are in the current directory:" guess

get_file () {
    local files_number=$(ls -l | wc -l)-1
    echo $files_number
}

correct_guess=$(get_file)

# echo $correct_guess
while [[ $guess -ne $correct_guess ]]
do
    if [[ $guess -gt $correct_guess ]]; then
        echo "Your guess was too high"
    elif [[ $guess -lt $correct_guess ]]; then
        echo "Your guess was too low"
    fi
    echo
    read -p "How many files are in the current directory:" guess
done

echo
echo "congratulations!! your guess is correct!"
